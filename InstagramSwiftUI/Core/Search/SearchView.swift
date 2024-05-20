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
                    ForEach(0...10, id: \.self){ user in
                        HStack {
                            Image("rustam_keneev")
                                .resizable()
                                .modifier(SearchProfileImageModifier())
                            
                            VStack(alignment: .leading){
                                Text("Rustam Keneev")
                                    .fontWeight(.semibold)
                                Text("IOS and Android developer")
                            }//: VSTACK
                            .font(.footnote)
                            Spacer()
                        }//: HSTACK
                        .padding(.horizontal)
                    }//: LOOP
                }//: LAZY VERTICCAL VIEW
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search ...")
            }//: SCROLL VIEW
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }//: NAVIGATION STACK
    }//: END BODY
}//: END SEARCH VIEW

//MARK: - PREVIEW
#Preview {
    SearchView()
}
