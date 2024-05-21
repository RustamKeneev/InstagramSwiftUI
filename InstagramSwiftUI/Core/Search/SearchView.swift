//
//  SearchView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct SearchView: View {
    //MARK: - PROPERTIES
    @State private var searchText = ""
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 14){
                    ForEach(User.MOCK_USERS){ user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .modifier(SearchProfileImageModifier())
                                
                                VStack(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullName = user.fullName {
                                        Text(fullName)
                                    }
                                }//: VSTACK
                                .font(.footnote)
                                Spacer()
                            }//: HSTACK
                            .foregroundColor(.black)
                            .padding(.horizontal)
                        }//: NAVIGATION LINK
                    }//: LOOP
                }//: LAZY VERTICCAL VIEW
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search ...")
            }//: SCROLL VIEW
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }//: NAVIGATION STACK
    }//: END BODY
}//: END SEARCH VIEW

//MARK: - PREVIEW
#Preview {
    SearchView()
}
