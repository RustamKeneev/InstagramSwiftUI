//
//  PersonImageModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct PersonImageModifier: ViewModifier {
    let size: ProfileImageSize

    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: size.dimension, height: size.dimension)
            .clipShape(Circle())
    }
}
