//
//  Post.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 21/5/24.
//

import Foundation

struct Post: Identifiable, Hashable, Codable{
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Data
    var user: User?
}

extension Post {
    static var MOCk_POSTS: [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is test caption text", likes: 100, imageUrl: "person", timestamp: Data(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is test caption text 2", likes: 100, imageUrl: "person", timestamp: Data(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is test caption tex 3", likes: 100, imageUrl: "person", timestamp: Data(), user: User.MOCK_USERS[2]),
        
    ]
}
