//
//  NotificationViewModel.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import Foundation

class NotificationViewModel: ObservableObject {
    @Published var notifications = [Notification]()
    init() {
        fetchNotifications() 
    }
    func fetchNotifications() {
        self.notifications = DeveloperPreview.shared.notification
    }
}
