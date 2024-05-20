//
//  LoginViewBaseButtonTitleModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct LoginViewBaseButtonTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.trailing, 28)
            .foregroundColor(Color(.systemBlue))
    }
}
