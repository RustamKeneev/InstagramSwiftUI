//
//  LoginViewTextOrModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct LoginViewTextOrModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .fontWeight(.semibold)
            .foregroundColor(Color.gray)
    }
}
