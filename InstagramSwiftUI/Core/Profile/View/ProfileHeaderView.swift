//
//  ProfileHeaderView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    //MARK: - PROPERTIES
    let user: User
    @State private var showEditProfile = false
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 8){
            //PICTURE AND STATS
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .modifier(PersonImageModifier())
                Spacer()
                HStack(spacing: 8){
                    Spacer()
                    UserStatView(value: 100, title: "Posts")
                    Spacer()
                    UserStatView(value: 100, title: "Followers")
                    Spacer()
                    UserStatView(value: 100, title: "Following")
                }//: HSTACK
            }//: HSTACK (PICTURE AND STATS)
            .padding(.horizontal)
            
            //: NAME AND BIO
            VStack(alignment: .leading, spacing: 4){
                if let fullName = user.fullName {
                    Text(fullName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                Text(user.username)
            }//: VSTACK (NAME AND BIO)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .padding(.horizontal)
            
            // ACTION BUTTON
            Button(action: {
                if user.isCurrentUser{
                    showEditProfile.toggle()
                    print("show edit profile")
                }else{
                    print("Follow user..")
                }
            }, label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .modifier(EditProfileButtonModifier())
                    .background(user.isCurrentUser ? .white : Color(.systemBlue))
                    .foregroundColor(user.isCurrentUser ? .black : .white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1)
                    )
            })//: BUTTON EDIT PROFILE
            Divider()
        }//: VSTACK (HEADER)
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
    }//: END BODY
}//: END PROFILE HEADER VIEW

//MARK: - PREVIEW
#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[1])
}
