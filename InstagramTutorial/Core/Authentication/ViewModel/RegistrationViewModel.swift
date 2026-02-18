//
//  RegistrationViewModel.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 18/02/26.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    
    func createUser() async throws{
      try await  AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
