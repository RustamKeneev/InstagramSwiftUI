//
//  FeedCellProfileImageModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct FeedCellProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}
