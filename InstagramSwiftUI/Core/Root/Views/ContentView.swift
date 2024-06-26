//
//  ContentView.swift
//  InstagramSwiftUI
//
//  Created by Rustam Keneev on 19/5/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()

    //MARK: - BODY
    var body: some View {
        Group{
            if viewModel.userSession == nil {
                LoginView()
                    .environmentObject(registrationViewModel)
            } else if let user = viewModel.currentUser{
                MainTabView(user: user)
            }//: IF AND ELSE
        }//: GROUP
    }//: END BODY
}//: END CONTENT VIEW

//MARK: - PREVIEW
#Preview {
    ContentView()
}
