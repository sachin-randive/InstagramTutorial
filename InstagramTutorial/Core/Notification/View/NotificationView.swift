//
//  NotificationView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 05/03/26.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(0..<15) { notification in
                        NotificationCell()
                            .padding(.top)
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    NotificationView()
}
