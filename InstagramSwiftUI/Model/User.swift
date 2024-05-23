//
//  User.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import Foundation
import Firebase

struct User: Identifiable,Hashable, Codable{
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    var email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "rustam_keneev",fullName: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com"),
        .init(id: NSUUID().uuidString, username: "f", profileImageUrl: "rustam_keneev",fullName: "sss", bio: "Text", email: "s@s.com"),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person",fullName: "f", bio: "Text", email: "sd@s.com"),
        .init(id: NSUUID().uuidString, username: "f", profileImageUrl: "person",fullName: "f", bio: "Text", email: "f@gmail.com"),
        .init(id: NSUUID().uuidString, username: "f", profileImageUrl: "rustam_keneev",fullName: "f", bio: "", email: "f@gmail.com")
    ]
}
