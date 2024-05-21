//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct FeedCell: View {
    //MARK: - PROPERTIES
    let post: Post
    var body: some View {
        VStack{
            // IMAGE AND USERNAME
            HStack{
                if let user = post.user {
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .modifier(FeedCellProfileImageModifier())
                    Text(user.username)
                        .modifier(FeedCellBaseTitleModifier())
                }
                Spacer()
            }//: HSTACK (IMAGE AND USERNAME)
            .padding(.leading, 8)
            
            //: POST IMAGE
            Image(post.imageUrl)
                .resizable()
                .modifier(FeedCellPostImageModifier())
            
             //ACTION BUTTONS
            HStack(spacing: 16){
                Button(action: {
                    print("Like clicked")
                }, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })//: BUTTON HEART
                Button(action: {
                    print("Comments clicked")
                }, label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                })//: BUTTON MESSAGE
                Button(action: {
                    print("Share clicked")
                }, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })//: BUTTON SHARE
                Spacer()
            }//: HSTACK (ACTION BUTTONS)
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            // LIKES LABEL
            Text("\(post.likes) likes")
                .modifier(FeedCellBaseTitleModifier())
            
            // CAPTION LABEL
            HStack{
                Text("\(post.user?.username ?? "")")
                    .fontWeight(.semibold) +
                Text(post.caption)
            }//: HSTACK (CAPTION LABEL)
            .modifier(FeedCellCaptionTitleModifier())
            
            Text("6h ago")
                .modifier(FeedCellCaptionHoursTitleModifier())
        }//: VSTACK
    }//: END BODY
}//: END FEED CELL

//MARK: - PREVIEW
#Preview {
    FeedCell(post: Post.MOCk_POSTS[1])
}
