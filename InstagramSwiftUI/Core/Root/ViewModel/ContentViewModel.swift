//
//  ContentViewModel.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 22/5/24.
//

import Foundation
import Firebase
import Combine

class ContentViewModel: ObservableObject{
    private let service = AuthService.shared
    private var cancelLables = Set<AnyCancellable>()
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        setupSubcribers()
    }
    
    func setupSubcribers(){
        service.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancelLables)
    }
}
