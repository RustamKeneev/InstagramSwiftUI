//
//  CurrentUserProfileView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    //MARK: - PROPERTIES
    
    let user: User
    var posts: [Post]{
        return Post.MOCk_POSTS.filter({$0.user?.username == user.username})
    }
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
        .init(.flexible(), spacing: 2),
    ]
    
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView{
                ProfileHeaderView(user: user)
                PostGridView(user: user)
            }//: SCROLLVIEW
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signOut()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }//: LABEL
                }//: TOOLBAR ITEM
            }//: TOOLBAR
        }//: NAVIGATION STACK
    }//: END BODY
}//: END CURRENT USER PROFILE VIEW


//MARK: - PREVIEW
#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
