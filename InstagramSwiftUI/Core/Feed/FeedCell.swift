//
//  FeedCell.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct FeedCell: View {
    //MARK: - PROPERTIES

    var body: some View {
        VStack{
            // IMAGE AND USERNAME
            HStack{
                Image("rustam_keneev")
                    .resizable()
                    .modifier(FeedCellProfileImageModifier())
                Text("Rustam Keneev")
                    .modifier(FeedCellBaseTitleModifier())
                Spacer()
            }//: HSTACK (IMAGE AND USERNAME)
            .padding(.leading, 8)
            
            //: POST IMAGE
            Image("rustam_keneev")
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
            Text("1000000000")
                .modifier(FeedCellBaseTitleModifier())
            
            // CAPTION LABEL
            HStack{
                Text("Best ")
                    .fontWeight(.semibold) +
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
            }//: HSTACK (CAPTION LABEL)
            .modifier(FeedCellCaptionTitleModifier())
            
            Text("6h ago")
                .modifier(FeedCellCaptionHoursTitleModifier())
        }//: VSTACK
    }//: END BODY
}//: END FEED CELL

//MARK: - PREVIEW
#Preview {
    FeedCell()
}
