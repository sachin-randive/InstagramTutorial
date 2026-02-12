//
//  User.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 12/02/26.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static let MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "Batman", profileImageUrl: "batman-2", fullname: "Brucly cake", bio: "Gotma's dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "canen", profileImageUrl: "canen-1", fullname: "Brucly Lee", bio: "canen got it", email: "canen.lee@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Neha", profileImageUrl: "neha-1", fullname: nil, bio: "neha likes cats and puppy.", email: "neha-1@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Panther", profileImageUrl: "black_panther01", fullname: "Black Panther", bio: "have a fun, as a play boy.", email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ravi", profileImageUrl: "ravi-1", fullname: "Ravi Jadhav", bio: "Ravi's dark Knight", email: "Ravi.men@gmail.com"),
        
    ]
}
