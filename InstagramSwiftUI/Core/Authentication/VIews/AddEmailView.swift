//
//  AddEmailView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct AddEmailView: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 12){
            Text("Add your email")
                .modifier(AddYourEmailTitleModifier())
            Text("You'll use this email to sign in to your account")
                .modifier(AddEmailTextModifier())
            TextField("Email", text: $viewModel.email)
                .modifier(LoginViewTextfieldModifier())
            NavigationLink{
                CreateUserNameView()
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
}//: END ADD EMAIL VIEW

//: PREVIEW
#Preview {
    AddEmailView()
}
