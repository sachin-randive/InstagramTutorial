//
//  NotificationCell.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView(user: User.MOCK_USERS[0], size: .xSmall)
            
            HStack {
                Text("Divit ")
                    .font(.subheadline)
                    .fontWeight(.semibold) +
                
                Text("liked one of the posts. see it here. ")
                    .font(.subheadline) +
                
                Text("1W")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Image("batman")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipped()
                .padding(.leading, 2)
            
        } .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
