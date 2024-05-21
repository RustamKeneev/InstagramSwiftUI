//
//  UploadPostViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import Foundation
import SwiftUI
import PhotosUI

@MainActor
class UploadPostViewModel: ObservableObject {
    @Published var postImage: Image?
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task {await loadImage(fromItem: selectedImage)} }
    }
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else {return}
        guard let data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage = UIImage(data: data) else {return}
        self.postImage = Image(uiImage: uiImage)
    }
}
