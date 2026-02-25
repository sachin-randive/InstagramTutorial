//
//  ContentViewModel.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 17/02/26.
//

import Foundation
import FirebaseAuth
import Combine

@MainActor
class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        setupSubcribers()
    }
    
    func setupSubcribers() {
        service.$userSession.sink { [weak self] completion in
            if case .failure(let error) = completion {
                print(error.localizedDescription)
            }
            print(self?.userSession ?? [])
           
        } receiveValue: { [weak self] userSession in
            self?.userSession = userSession
        } .store(in: &cancellable)
        
        service.$currentUser.sink {[weak self] currentUser in
            self?.currentUser = currentUser
        }.store(in: &cancellable)
    }
}
