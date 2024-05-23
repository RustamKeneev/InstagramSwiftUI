//
//  AuthService.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 22/5/24.
//

import Foundation
import FirebaseAuth

class AuthService{
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }catch {
            print("Failed to login user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(email: String, password: String, userName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        }catch {
            print("Failed to register user with error \(error.localizedDescription)")
        }
    }
    
    func loadUserData(){
        
    }
    
    func signOut(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
