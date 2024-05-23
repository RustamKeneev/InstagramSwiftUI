//
//  SearchViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 23/5/24.
//

import Foundation

class SearchViewModel: ObservableObject{
    
    @Published var users = [User]()
    
    init(){
        Task { try await fetchAllUsers() }
    }
    
    @MainActor
    func fetchAllUsers() async throws {
        let fetchedUsers = try await UserService.fetchAllUsers()
        users = fetchedUsers
        print("users: \(fetchedUsers)")
    }
}
