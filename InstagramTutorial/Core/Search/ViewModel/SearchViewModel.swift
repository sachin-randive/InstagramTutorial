//
//  SearchViewModel.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 23/02/26.
//

import Foundation

@MainActor
class SearchViewModel: ObservableObject {
    @Published var users = [User]()
    
    init() {
        Task { try await fetchAllUsers() }
    }
    
    func fetchAllUsers()  async throws {
        self.users = try await UserService.fetchAllUsers()
    }
}
