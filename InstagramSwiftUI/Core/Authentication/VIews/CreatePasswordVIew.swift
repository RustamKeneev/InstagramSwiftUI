//
//  CreatePasswordVIew.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct CreatePasswordVIew: View {
    //MARK: - PROPERTIES
    @State private var password = ""
    @Environment(\.dismiss) var dismiss

    //MARK: - BODY
    var body: some View {
        VStack(spacing: 12){
            Text("Create password")
                .modifier(AddYourEmailTitleModifier())
            Text("Your password must be at least 6 characters in lenght")
                .modifier(AddEmailTextModifier())
            SecureField("Password", text: $password)
                .modifier(LoginViewTextfieldModifier())
                .padding(.top)
            NavigationLink{
                CompleteSignUpVIew()
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
}//: END CREATE PASSWORD VIEW

//MARK: - PREVIEW
#Preview {
    CreatePasswordVIew()
}
