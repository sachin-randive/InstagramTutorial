//
//  Post.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 13/02/26.
//

import Foundation


struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var POST_MOCKS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "This is some test caption now",
            likes: 23,
            imageUrl: "batman-2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "wakanda forever",
            likes: 89,
            imageUrl: "canen-1",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "Iron lady",
            likes: 01,
            imageUrl: "neha-1",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "TVenom is hungry. Time to eat",
            likes: 45,
            imageUrl: "black_panther01",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: "We are in Goa for enjoy.",
            likes: 23,
            imageUrl: "ravi-1",
            timestamp: Date(),
            user: User.MOCK_USERS[4]
        )
    ]
}
