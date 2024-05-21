//
//  PostGridView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI

struct PostGridView: View {
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
        //POST GRID VIEW
            LazyVGrid(columns: gridItems, spacing: 2){
                ForEach(posts){ item in
                    Image(item.imageUrl)
                        .resizable()
                        .modifier(PostGridModifier())
                }//: LOOP
            }//: LAZY GRID
    }//: END BODY
}//: END POST GRID VIEW

//MARK: - PREVIEW
#Preview {
    PostGridView(user: User.MOCK_USERS[0])
}
