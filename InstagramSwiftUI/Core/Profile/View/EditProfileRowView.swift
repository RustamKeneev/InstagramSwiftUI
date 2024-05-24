//
//  EditProfileRowView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 24/5/24.
//

import SwiftUI

struct EditProfileRowView: View {
    //MARK: - PROPERTIES
    let title: String
    let placeholder: String
    
    @State var sampleText = "Sample text"
    @Binding var text: String
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            VStack{
                TextField(placeholder, text: $text)
                Divider()
            }//: VSTACK
        }//: HSTACK
        .font(.subheadline)
        .frame(height: 36)
    }//: END BODY
}//: END EDIT PROFILE ROW VIEW
