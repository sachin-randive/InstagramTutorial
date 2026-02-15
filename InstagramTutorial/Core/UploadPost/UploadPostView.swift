//
//  UploadPostView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 15/02/26.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @State private var photoItem: PhotosPickerItem?
    
    var body: some View {
        VStack {
            //action toolbar
            HStack {
                Button {
                    print("Cancel upload")
                }label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                Button {
                    print("Upload")
                }label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            //Post Image and caption
            HStack(spacing: 10) {
              Image("batman-2")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            Spacer()
        }
        .onAppear() {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $photoItem)
    }
}

#Preview {
    UploadPostView()
}
