//
//  RegistrationViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 22/5/24.
//

import Foundation

class RegistrationViewModel: ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password  = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, userName: username)
        username = ""
        email = ""
        password = ""
    }
}
