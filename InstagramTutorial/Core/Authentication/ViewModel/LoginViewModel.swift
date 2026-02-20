//
//  LoginViewModel.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 20/02/26.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
