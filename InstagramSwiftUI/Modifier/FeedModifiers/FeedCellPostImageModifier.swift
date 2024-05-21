//
//  FeedCellPostImageModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct FeedCellPostImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(height: 400)
            .scaledToFit()
    }
}
