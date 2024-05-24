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
    var posts: [Post]{
        return Post.MOCk_POSTS.filter({$0.user?.username == user.username})
    }
    
    //MARK: - BODY
    var body: some View {
        ScrollView{
            ProfileHeaderView(user: user)
            PostGridView(user: user)
        }//: SCROLLVIEW
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }//: END BODY
}//: END PROFILE VIEW

//MARK: - PREVIEW
#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
