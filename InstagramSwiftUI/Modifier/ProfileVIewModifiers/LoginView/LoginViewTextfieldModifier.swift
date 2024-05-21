//
//  LoginViewTextfieldModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct LoginViewTextfieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .autocapitalization(.none)
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
