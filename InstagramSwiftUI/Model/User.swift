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
    var followers: [String] = []
    var following: [String] = []
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
    
    
}

extension User{
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person.circle",fullname: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com", followers: [], following: []),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person.circle",fullname: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com", followers: [], following: []),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person.circle",fullname: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com", followers: [], following: []),
        .init(id: NSUUID().uuidString, username: "Rustam", profileImageUrl: "person.circle",fullname: "RustamKeneev", bio: "Text", email: "rustamkeneev@gmail.com", followers: [], following: []),
    ]
}
