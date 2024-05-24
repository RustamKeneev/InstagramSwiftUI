//
//  ProfileImageSize.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 25/5/24.
//

import Foundation

enum ProfileImageSize{
    case xSmall
    case small
    case meduim
    case large
    
    var dimension: CGFloat {
        switch self{
        case .xSmall:
            return 40
        case .small:
            return 48
        case .meduim:
            return 64
        case .large:
            return 80
        }
    }
}
