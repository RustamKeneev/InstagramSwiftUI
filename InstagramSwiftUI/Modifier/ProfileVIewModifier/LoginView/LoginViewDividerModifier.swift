//
//  LoginViewDividerModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct LoginViewDividerModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
            .foregroundColor(Color.gray)
    }
}
