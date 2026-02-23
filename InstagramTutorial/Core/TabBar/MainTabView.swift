//
//  MainTabView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 04/02/26.
//

import SwiftUI

struct MainTabView: View {
    let user: User
    @State private var selectedIndex = 0
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
                .onAppear {
                   selectedIndex = 0
                }
                .tag(0)
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear {
                   selectedIndex = 1
                }
                .tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .onAppear {
                   selectedIndex = 2
                }
                .tag(2)
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "heart")
                }
                .onAppear {
                   selectedIndex = 3
                }
                .tag(3)
            
            CurrentUserProfileView(user: user)
                .tabItem {
                    Image(systemName: "person")
                }
                .onAppear {
                   selectedIndex = 4
                }
                .tag(4)
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView(user: User.MOCK_USERS[0])
}
