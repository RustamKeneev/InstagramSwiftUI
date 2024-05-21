//
//  PostGridModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import SwiftUI

struct PostGridModifier: ViewModifier {
    private let imageDimension: CGFloat = (UIScreen.main.bounds.width / 3) - 2
    
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: imageDimension, height: imageDimension)
            .clipped()
            .padding(.horizontal, 2)
    }
}
