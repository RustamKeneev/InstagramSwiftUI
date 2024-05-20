//
//  FeedCellCaptionTitleModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 20/5/24.
//

import SwiftUI

struct FeedCellCaptionTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 8)
    }
}
