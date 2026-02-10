//
//  AddEmailView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 09/02/26.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
                .padding(.top)
            
            NavigationLink {
                CreateUserNameView()
                    .navigationBarBackButtonHidden(true)
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
    AddEmailView()
}
