//
//  CompleteSignUpVIew.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI

struct CompleteSignUpVIew: View {
    //MARK: - PROPERTIES
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: RegistrationViewModel

    //MARK: - BODY
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Text("Welcome to Instagram, \(viewModel.username)")
                .modifier(AddYourEmailTitleModifier())
                .multilineTextAlignment(.center)
            Text("Click below to complate registration and start using Instagram")
                .modifier(AddEmailTextModifier())
            Button {
                Task { try await viewModel.createUser()}
            } label: {
                Text("Complete Sign Up")
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
}//: END COMPLATE SIGN UP VIEW

//MARK: - PREVIEW
#Preview {
    CompleteSignUpVIew()
}
