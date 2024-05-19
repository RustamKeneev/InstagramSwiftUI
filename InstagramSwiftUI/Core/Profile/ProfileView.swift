//
//  ProfileView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct ProfileView: View {
    //MARK: - PROPERTIES
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    //HEADER
                    VStack(spacing: 8){
                        //PICTURE AND STATS
                        HStack{
                            Image("rustam_keneev")
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
                            Text("Rustam Keneev")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            Text("IOS and Andoid developer")
                                .font(.footnote)
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
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("clicked")
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
            }//: TOOLBAR
        }//: NAVIGATION STACK
    }//: END BODY
}//: END PROFILE VIEW

//MARK: - PREVIEW
#Preview {
    ProfileView()
}
