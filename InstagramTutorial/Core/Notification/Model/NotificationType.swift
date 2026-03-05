//
//  NotificationType.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import Foundation

enum NotificationType: Int, Codable {
    case like
    case comment
    case follow
    
    var notificationMessage: String {
        switch self {
        case .like: 
            return "liked one of your posts."
        case .comment:
            return "commneted on one of ypur posts."
        case .follow:
            return "started following you."
        }
    }
}
