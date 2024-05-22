//
//  CreateUserNameView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct CreateUserNameView: View {
    //MARK: - PROPERTIES
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 12){
            Text("Create username")
                .modifier(AddYourEmailTitleModifier())
            Text("You'll use this email to sign in to your account")
                .modifier(AddEmailTextModifier())
            TextField("User name", text: $username)
                .modifier(LoginViewTextfieldModifier())
            NavigationLink{
                CreatePasswordVIew()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .modifier(LoginButtonTitleModifier())
            }//: NAVIGATION LINK
            .padding(.vertical)
            Spacer()
        }//: VSTACK
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }//: ON TAP GESTURE
            }//: TOOLBAR ITEM
        }//: TOOLBAR
    }//: END BODY
}//: END CREATE USER NAME VIEW

//MARK: - PREVIEW
#Preview {
    CreateUserNameView()
}
