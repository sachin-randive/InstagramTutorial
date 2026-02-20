//
//  SearchView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 07/02/26.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    
    private var filteredUsers: [User] {
        if searchText.isEmpty {
            return User.MOCK_USERS
        } else {
           return User.MOCK_USERS.filter { user in
                user.username.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(filteredUsers) { user in
                        NavigationLink(value: user) {
                            HStack {
                                Image(user.profileImageUrl ?? " ")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                Spacer()
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: { user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
