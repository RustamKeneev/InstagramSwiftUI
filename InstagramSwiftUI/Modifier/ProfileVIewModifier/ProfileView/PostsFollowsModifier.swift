//
//  PostsFollowsModifier.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct PostsFollowsModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .fontWeight(.semibold)
    }
}
