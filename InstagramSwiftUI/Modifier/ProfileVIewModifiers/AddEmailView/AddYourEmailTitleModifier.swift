//
//  AddYourEmailTitleModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct AddYourEmailTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title2)
            .fontWeight(.bold)
            .padding(.top)
    }
}
