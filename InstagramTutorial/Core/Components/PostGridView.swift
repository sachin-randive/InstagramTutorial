//
//  PostGridView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 13/02/26.
//

import SwiftUI

struct PostGridView: View {
    var posts: [Post]
    private let imageDimention: CGFloat = (UIScreen.main.bounds.width / 3) - 1
    
     var gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 1) {
            ForEach(posts) {post in
                Image(post.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimention, height: imageDimention)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCKS_POST)
}
