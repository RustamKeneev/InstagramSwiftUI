//
//  ProfileViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 26/5/24.
//

import SwiftUI
import Firebase

class ProfileViewModel: ObservableObject {
    @Published var user: User
    @Published var isFollowing = false
    
    init(user: User) {
        self.user = user
        checkIfFollowing()
    }
    
    func followUser() {
        guard let currentUserId = Auth.auth().currentUser?.uid else { return }
        
        let userRef = Firestore.firestore().collection("users").document(user.id)
        let currentUserRef = Firestore.firestore().collection("users").document(currentUserId)
        
        userRef.updateData(["followers": FieldValue.arrayUnion([currentUserId])])
        currentUserRef.updateData(["following": FieldValue.arrayUnion([user.id])])
        
        isFollowing = true
    }
    
    func unfollowUser() {
        guard let currentUserId = Auth.auth().currentUser?.uid else { return }
        
        let userRef = Firestore.firestore().collection("users").document(user.id)
        let currentUserRef = Firestore.firestore().collection("users").document(currentUserId)
        
        userRef.updateData(["followers": FieldValue.arrayRemove([currentUserId])])
        currentUserRef.updateData(["following": FieldValue.arrayRemove([user.id])])
        
        isFollowing = false
    }
    
    private func checkIfFollowing() {
        guard let currentUserId = Auth.auth().currentUser?.uid else { return }
        
        let userRef = Firestore.firestore().collection("users").document(currentUserId)
        
        userRef.getDocument { document, error in
            if let document = document, document.exists {
                let data = document.data()
                let following = data?["following"] as? [String] ?? []
                self.isFollowing = following.contains(self.user.id)
            }
        }
    }
}

