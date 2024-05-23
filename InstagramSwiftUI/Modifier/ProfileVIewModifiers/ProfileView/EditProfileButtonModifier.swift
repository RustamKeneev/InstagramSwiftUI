//
//  EditProfileButtonModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct EditProfileButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360, height: 32)
//            .foregroundColor(Color.black)
//            .overlay(
//                RoundedRectangle(cornerRadius: 6)
//                    .stroke(Color.gray, lineWidth: 2)
//            )
    }
}
