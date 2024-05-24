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
    var fullname: String?
    var bio: String?
    var email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person.circle",fullname: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Petr", profileImageUrl: "person.circle",fullname: "sss", bio: "Text", email: "s@s.com"),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person.circle",fullname: "f", bio: "Text", email: "sd@s.com"),
        .init(id: NSUUID().uuidString, username: "Oleg", profileImageUrl: "person.circle",fullname: "f", bio: "Text", email: "f@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Alexander", profileImageUrl: "person.circle",fullname: "f", bio: "", email: "f@gmail.com")
    ]
}
