//
//  DeveloperPreview.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import SwiftUI
import Firebase

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let notification: [Notification] = [
        .init(id: NSUUID().uuidString, postId: nil, timestamp: Timestamp(), notificationSenderUId: "123", type: .like),
        .init(id: NSUUID().uuidString, postId: nil, timestamp: Timestamp(), notificationSenderUId: "345", type: .comment),
        .init(id: NSUUID().uuidString, postId: nil, timestamp: Timestamp(), notificationSenderUId: "567", type: .follow),
        .init(id: NSUUID().uuidString, postId: nil, timestamp: Timestamp(), notificationSenderUId: "789", type: .like),
    ]
}
