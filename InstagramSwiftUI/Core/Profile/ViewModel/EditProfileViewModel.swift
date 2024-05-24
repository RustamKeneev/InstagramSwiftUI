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
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage)} }
    }
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.profileImage = Image(uiImage: uiImage)
    }
}
