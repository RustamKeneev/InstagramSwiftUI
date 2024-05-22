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
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
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
        
    }
}
