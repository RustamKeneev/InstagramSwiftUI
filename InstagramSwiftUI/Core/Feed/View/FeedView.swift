//
//  FeedView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct FeedView: View {
    //MARK: - PROPERTIES
    @StateObject var viewModel = FeedViewModel()
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 30){
                    ForEach(viewModel.posts){ post in
                        FeedCell(post: post)
                    }//: LOOP
                }//: LAZY VERTICAL STACK
                .padding(.top, 8)
            }//: SCROLL VIEW
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Image("instagram_logo_black")
                        .resizable()
                        .frame(width: 100, height: 32)
                }//: TOOLBAR ITEM
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }//: TOOLBAR ITEM
            }//: TOOLBAR
        }//: NAVIGATION STACK
    }//: END BODY
}//: END FEED VIEW

//MARK: - PREVIEW
#Preview {
    FeedView()
}
