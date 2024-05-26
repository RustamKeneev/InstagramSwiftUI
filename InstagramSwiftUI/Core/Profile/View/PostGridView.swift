//
//  PostGridView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI
import Kingfisher

struct PostGridView: View {
    //MARK: - PROPERTIES
    @StateObject var viewModel: PostGridViewModel
    
    init(user: User){
        self._viewModel = StateObject(wrappedValue: PostGridViewModel(user: user))
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
                ForEach(viewModel.posts){ item in
                    KFImage(URL(string: item.imageUrl))
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
