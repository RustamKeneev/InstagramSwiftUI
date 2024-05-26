//
//  FeedViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 25/5/24.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject{
    @Published var posts = [Post]()
    
    init(){
        Task { try await fetchPosts()}
    }
    
    @MainActor
    func fetchPosts() async throws{
        self.posts = try await PostService.fetchFeedPosts()
    }
}
