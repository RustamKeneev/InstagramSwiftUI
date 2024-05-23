//
//  LoginViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 23/5/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
