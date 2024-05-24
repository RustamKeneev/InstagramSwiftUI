//
//  EditProfileViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 24/5/24.
//

import SwiftUI
import PhotosUI
import Firebase

@MainActor
class EditProfileViewModel: ObservableObject{
    @Published var profileImage: Image?
    @Published var fullname = ""
    @Published var bio = ""
    @Published var user: User
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage)} }
    }
    
    private var uiImage: UIImage?
    
    init(user: User){
        self.user = user
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.uiImage = uiImage
        self.profileImage = Image(uiImage: uiImage)
    }
    
    func updateUserData() async throws{
        // UPDATE PROFILE IMAGE IF CHANGED
        var data = [String: Any]()
        if let uiImage = uiImage {
            let imageUrl = try? await ImageUploader.uploadImage(image: uiImage)
            data["profileImageUrl"] = imageUrl
        }
        // UPDATE PROFILE NAME IF CHANGED
        if !fullname.isEmpty && user.fullName != fullname {
            data["fullname"] = fullname
            print("ololo: Update fullname \(fullname)")
        }
        
        // UPDATE PROFILE BIO IF CHANGED
        if !bio.isEmpty && user.bio != bio{
            data["bio"] = bio
            print("ololo: Update bio \(bio)")
        }
        
        if !data.isEmpty{
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
    }
}
