//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct ProfileView: View {
    //MARK: - PROPERTIES
    let user: User
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
        
    //MARK: - BODY
    var body: some View {
            ScrollView{
                VStack{
                    //HEADER
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
                        }//: VSTACK (NAME AND BIO)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.horizontal)
                        
                        // ACTION BUTTON
                        Button(action: {
                            
                        }, label: {
                            Text("Edit Profile")
                                .modifier(EditProfileButtonModifier())
                        })//: BUTTON EDIT PROFILE
                        Divider()
                    }//: VSTACK (HEADER)
                    
                    //POST GRID VIEW
                    LazyVGrid(columns: gridItems){
                        ForEach(0...10, id: \.self){ item in
                            Image("rustam_keneev")
                                .resizable()
                                .scaledToFill()
                        }
                    }//: LAZY GRID
                }//VSTACK
            }//: SCROLLVIEW
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }//: END BODY
}//: END PROFILE VIEW

//MARK: - PREVIEW
#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
