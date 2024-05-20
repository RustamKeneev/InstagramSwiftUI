//
//  LoginView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct LoginView: View {
    //MARK: - PROPERTIES
    @State private var email = ""
    @State private var password = ""
    
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                // LOGO IMAGE
                Image("instagram_logo_black")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                
                // TEXTFIELDS
                VStack{
                    TextField("Enter your email", text: $email)
                        .modifier(LoginViewTextfieldModifier())
                    SecureField("Password", text: $password)
                        .modifier(LoginViewTextfieldModifier())
                }//: VSTACK
                
                Button(action: {
                    print("forgot password clicked")
                }, label: {
                    Text("Forgot password?")
                        .modifier(LoginViewBaseButtonTitleModifier())
                })//: BUTTON FORGOT PASSWORD
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.top, 8)
                
                Button(action: {
                    print("login clicked")
                }, label: {
                    Text("Login")
                        .modifier(LoginButtonTitleModifier())
                })//: BUTTON LOGIN
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .modifier(LoginViewDividerModifier())
                    Text("OR")
                        .modifier(LoginViewTextOrModifier())
                    Rectangle()
                        .modifier(LoginViewDividerModifier())
                }//: HSTACK TITLE OR
                .foregroundColor(Color.gray)
                
                HStack{
                    Image("facebook_logo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Continue with facebook")
                        .modifier(LoginViewBaseButtonTitleModifier())
                }//: HSTACK LOGIN WITH FACEBOOK
                .padding(.top, 10)
                Spacer()
                Divider()
                NavigationLink{
                    Text("Sign up")
                } label: {
                    HStack(spacing: 4){
                        Text("Don`t have an account?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }//: HSTACK
                    .font(.footnote)
                }//: NAVIGATION LINK SIGN UP
                .padding(.vertical, 16)
            }//: VSTACK
        }//: NAVIGATION STACK
    }//: END BODY
}//: END LOGIN VIEW

//MARK: - PREVIEW
#Preview {
    LoginView()
}
