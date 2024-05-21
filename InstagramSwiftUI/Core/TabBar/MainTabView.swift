//
//  MainTabView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct MainTabView: View {
    //MARK: - PROPERTIES

    //MARK: - BODY
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }//: TAB ITEM HOME
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }//: TAB ITEM SEARCH
            Text("Upload")
                .tabItem {
                    Image(systemName: "plus.square")
                }//: TAB ITEM UPLOAD
            Text("Notificcation")
                .tabItem {
                    Image(systemName: "heart")
                }//: TAB ITEM NOTIFICATION
            CurrentUserProfileView(user: User.MOCK_USERS[1])
                .tabItem {
                    Image(systemName: "person")
                }//: TAB ITEM PROFILE
        }//: TABVIEW
        .accentColor(Color.black)
    }//: END BODY
}//: END MAIN TAB VIEW


//MARK: - PREVIEW
#Preview {
    MainTabView()
}
