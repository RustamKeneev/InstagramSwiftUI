//
//  UserService.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 23/5/24.
//

import Foundation
import Firebase

struct UserService{
    static func fetchAllUsers() async throws -> [User]{
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        print("count \(snapshot.count)")
        return snapshot.documents.compactMap({ try? $0.data(as: User.self)})
    }
}
