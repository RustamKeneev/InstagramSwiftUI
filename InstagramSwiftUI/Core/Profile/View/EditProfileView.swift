//
//  EditProfileView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 23/5/24.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel: EditProfileViewModel
    
    init(user: User){
        self._viewModel = StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    
    //MARK: - BODY
    var body: some View {
        VStack{
            // TOOLBAR
            VStack {
                HStack{
                    Button("Cancel"){
                        dismiss()
                    }// BUTTON CANCEL
                    Spacer()
                    Text("Edit profile")
                        .font(.headline)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {
                        Task {
                            try await viewModel.updateUserData()
                            dismiss()
                        }//: TASK
                        print("update profile info")
                    }, label: {
                        Text("Done")
                            .font(.headline)
                            .fontWeight(.bold)
                    })//: BUTTON (DONE)
                }//: HSTACK (TOOLBAR)
                .padding(.horizontal)
                Divider()
            }//: VSTACK (TOOLBAR)
            
            // EDIT PROFILE PICTURE
            PhotosPicker(selection: $viewModel.selectedImage){
                VStack {
                    if let image = viewModel.profileImage {
                        image
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                            .background(.gray)
                            .clipShape(Circle())
                    }else{
                        CircularProfileImageView(user: viewModel.user, size: .large)
                    }//: END IF ELSE
                    Text("Edit profile picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Divider()
                }//: VSTACK
            }//: PHOTO PICKER (EDIT PROFILE PICTURE)
            .padding(.vertical, 8)
            
            //EDIT PROFILE INFO
            VStack{
                EditProfileRowView(title: "Name", placeholder: "Enter your name...", text: $viewModel.fullname)
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio...", text: $viewModel.bio)
            }//: VSTACK EDIT PROFILE INFO
            Spacer()
        }//: VSTACK
    }//: END BODY
}//: END EDIT PROFILE VIEW

//MARK: - PREVIEW
#Preview {
    EditProfileView(user: User.MOCK_USERS[0])
}
