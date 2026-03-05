//
//  Notification.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import Firebase

struct Notification: Identifiable, Codable {
    let id: String
    let postId: String?
    let timestamp: Timestamp
    let notificationSenderUId: String
    let type: NotificationType
    
    var post: Post?
    var user: User?
}
