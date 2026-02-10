//
//  CreatePasswordView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 10/02/26.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Your password must be 6 characters in length")
                .font(.footnote)
                .foregroundStyle(.gray)
                .padding(.horizontal, 24)
            
            SecureField("password", text: $password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {dismiss()}
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
