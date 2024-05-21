//
//  User.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import Foundation

struct User: Identifiable, Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    var email: String
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "rustam_keneev",fullName: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "rustam_keneev",fullName: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "rustam_keneev",fullName: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "rustam_keneev",fullName: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "rustam_keneev",fullName: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com")
    ]
}
