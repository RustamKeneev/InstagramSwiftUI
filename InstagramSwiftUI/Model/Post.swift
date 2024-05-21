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
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s", likes: 100, imageUrl: "person", timestamp: Data(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "this is test caption tex 3", likes: 100, imageUrl: "person", timestamp: Data(), user: User.MOCK_USERS[2]),
        
    ]
}
