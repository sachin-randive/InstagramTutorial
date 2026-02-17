//
//  LoginView.swift
//  InstagramTutorial
//
//  Created by Sachin Randive on 08/02/26.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            
            Spacer()
            
            // logo image
            Image("instagram-1")
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 100)
            
            // text field
            
            VStack(alignment: .leading) {
                
               TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(IGTextFieldModifier())
                
            }
            Button {
                print("show forgot password")
            } label: {
                Text("Forgot password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 28)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            Button {
                print("Login")
            } label: {
                Text("log in")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            
            HStack {
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 0.5)
                Text("OR")
                    .font(.footnote)
                    .fontWeight(.semibold)
                   
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width/2) - 40, height: 0.5)
            }
            .foregroundStyle(.gray)
            
            HStack {
                Image("facebook-logo")
                    .resizable()
                    .frame(width: 32, height: 32)
                
                Text("Continue with Facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
            }
            
            Spacer()
            Divider()
            
            NavigationLink {
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack {
                    Text("Don't have an account?")
                
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    LoginView()
}
