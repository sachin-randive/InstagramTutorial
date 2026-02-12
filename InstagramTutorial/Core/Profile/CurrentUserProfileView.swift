//
//  CurrentUserProfileView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 12/02/26.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    private var gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                // header
                VStack(spacing: 12) {
                    //pic and stats
                    HStack {
                        Image("black_panther01")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack(spacing: 8) {
                            
                            UserStatView(value: 3, title: "Posts")
                            
                            UserStatView(value: 1, title: "Followers")
                            
                            UserStatView(value: 2, title: "Following")
                        }
                    }
                    .padding(.horizontal)
                    
                    // name and bio
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Sachin Randive")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("sachin_randive01 add your bio")
                            .font(.footnote)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    // Button Action
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(.black)
                            .overlay(content: {
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.black, lineWidth: 1)
                            })
                    }
                    
                    // divider
                    Divider()
                }
                ///post grid view
                
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0...12, id: \.self) {index in
                        Image("black_panther01")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar  {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
