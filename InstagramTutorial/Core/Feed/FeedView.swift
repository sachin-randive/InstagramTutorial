//
//  FeedView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 07/02/26.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 32) {
                    ForEach(0..<15, id: \.self) { post in
                        FeedCell()
                    }
                }
                .padding(.top, 10)
            }
            .navigationTitle(Text("Feed"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image("instagram-1")
                        .resizable()
                        .frame(width: 100, height: 32)
                }
            }
            
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
