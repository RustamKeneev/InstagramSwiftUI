//
//  UserService.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 23/5/24.
//

import Foundation
import Firebase

struct UserService{
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User]{
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        print("count \(snapshot.count)")
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
    }
}
