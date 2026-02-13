//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 06/02/26.
//

import SwiftUI

struct ProfileView: View {
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    var posts:[Post] {
        return Post.MOCKS_POST.filter({ $0.user?.username == user.username })
    }
    
    var body: some View {
        ScrollView {
            // header
            ProfileHeaderView(user: user)
            ///post grid view
            
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
