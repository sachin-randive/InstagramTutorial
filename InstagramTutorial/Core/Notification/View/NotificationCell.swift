//
//  NotificationCell.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import SwiftUI

struct NotificationCell: View {
    let notification: Notification
    var body: some View {
        HStack {
            CircularProfileImageView(user: User.MOCK_USERS[0], size: .xSmall)
            
            HStack {
                Text("Divit")
                    .font(.subheadline)
                    .fontWeight(.semibold) +
                
                Text(" \(notification.type.notificationMessage)")
                    .font(.subheadline) +
                
                Text(" 1W")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            if notification.type != .follow {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipped()
                    .padding(.leading, 2)
            } else {
                Button {
                    print("DEBUG: Handle follow here")
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 88, height: 32)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                }
            }
            
        } .padding(.horizontal)
    }
}

#Preview {
    NotificationCell(notification: DeveloperPreview.shared.notification[0])
}
