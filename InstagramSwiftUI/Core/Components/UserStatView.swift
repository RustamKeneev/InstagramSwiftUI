//
//  UserStatView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct UserStatView: View {
    //MARK: - PROPERTIES
    let value: Int
    let title: String
    
    //MARK: - BODY
    var body: some View {
        VStack{
            Text("\(value)")
                .modifier(PostsFollowsModifier())
            Text(title)
                .font(.footnote)
        }//: VSTACK (FOLLOWERS)
        .frame(width: .infinity)
    }//: END BODY
}//: END USER STAT VIEW

//MARK: - PREVIEW
#Preview {
    UserStatView(value: 100, title: "Posts")
}
