//
//  LoginView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 27.03.2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            Spacer()
            
            Image("instagramLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 100)
            
            VStack(spacing: 12) {
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                SecureFieldWithButton("Enter your password", text: $password)

            }
            
            Button{
                print("LOGIN BUTTON")
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color("buttonTextColor"))
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color("buttonTextColor"), lineWidth: 1)
            )
            .padding(.horizontal, 24)
            .padding(.top, 12)
            
            Button{
                print("Forget Password")
            } label: {
                Text("Forget Password?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.trailing, 24)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            
            HStack{
                Rectangle()
                    .frame(height: 0.5)
                Text("OR")
                Rectangle()
                    .frame(height: 0.5)
            }
            .padding(.horizontal, 24)
            .foregroundStyle(.gray)
            
            HStack{
                Image("facebookLogo")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Continue with Facebook")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemBlue))
            }
            .padding(.top, 5)
            
            Spacer()
            
            Divider()
            NavigationLink{
                AddEmailView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack{
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
            }
            .padding(.vertical, 16)
        }
    }
}
#Preview {
    LoginView()
}
