//
//  MainTabView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct MainTabView: View {
    //MARK: - PROPERTIES
    @State private var selectedIndex = 0
    
    //MARK: - BODY
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onAppear{
                    selectedIndex = 0
                }//: ON APPEAR
                .tabItem {
                    Image(systemName: "house")
                }//: TAB ITEM HOME
                .tag(0)
            
            SearchView()
                .onAppear{
                    selectedIndex = 1
                }//: ON APPEAR
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }//: TAB ITEM SEARCH
                .tag(1)

            UploadPostView(tabIndex: $selectedIndex)
                .onAppear{
                    selectedIndex = 2
                }//: ON APPEAR
                .tabItem {
                    Image(systemName: "plus.square")
                }//: TAB ITEM UPLOAD
                .tag(2)

            Text("Notificcation")
                .onAppear{
                    selectedIndex = 3
                }//: ON APPEAR
                .tabItem {
                    Image(systemName: "heart")
                }//: TAB ITEM NOTIFICATION
                .tag(3)

            CurrentUserProfileView(user: User.MOCK_USERS[1])
                .onAppear{
                    selectedIndex = 4
                }//: ON APPEAR
                .tabItem {
                    Image(systemName: "person")
                }//: TAB ITEM PROFILE
                .tag(4)
        }//: TABVIEW
        .accentColor(Color.black)
    }//: END BODY
}//: END MAIN TAB VIEW


//MARK: - PREVIEW
#Preview {
    MainTabView()
}
