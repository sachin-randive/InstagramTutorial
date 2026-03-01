//
//  User.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 12/02/26.
//

import Foundation
import FirebaseAuth

nonisolated
struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else {return false}
        return currentUid == id
    }
}

extension User {
    static let MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "sachinrandive", profileImageUrl: nil, fullname: "Brucly cake", bio: "Gotma's dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "divitrandive1", profileImageUrl: nil, fullname: "Brucly Lee", bio: "canen got it", email: "canen.lee@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Neha", profileImageUrl: nil, fullname: nil, bio: "neha likes cats and puppy.", email: "neha-1@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Panther", profileImageUrl: nil, fullname: "Black Panther", bio: "have a fun, as a play boy.", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ravi", profileImageUrl: nil, fullname: "Ravi Jadhav", bio: "Ravi's dark Knight", email: "Ravi.men@gmail.com"),
        
    ]
}
