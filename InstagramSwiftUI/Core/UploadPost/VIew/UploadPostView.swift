//
//  UploadPostView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    //MARK: - PROPERTIES
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    //MARK: - BODY
    var body: some View {
        VStack{
            //ACTION TOOLBAR
            HStack{
                Button(action: {
                    clearPostDataAndReturnFeed()
                    print("cancel upload")
                }, label: {
                    Text("Cancel")
                })//: BUTTON CANCEL UPLOAD
                Spacer()
                Text("New Post")
                    .fontWeight(.semibold)
                Spacer()
                Button(action: {
                    Task{
                        try await viewModel.uploadPost(caption: caption)
                        clearPostDataAndReturnFeed()
                    }//: TASK
                    print("upload")
                }, label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                })//: BUTTON UPLOAD
            }//: HSTACK
            .padding(.horizontal)
            
            // POST IMAGE AND CAPTION
            HStack(spacing: 8){
                if let image = viewModel.postImage {
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .clipped()
                }
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }//: HSTACK
            .padding()
            Spacer()
        }//: VSTACK
        .onAppear{
            imagePickerPresented.toggle()
        }//: ON APPEAR
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
    }//: END BODY
    func clearPostDataAndReturnFeed(){
        caption = ""
        viewModel.selectedImage = nil
        viewModel.postImage = nil
        tabIndex = 0
    }
}//: END UPLOAD POST VIEW

//MARK: - PREVIEW
#Preview {
    UploadPostView(tabIndex: .constant(0))
}
