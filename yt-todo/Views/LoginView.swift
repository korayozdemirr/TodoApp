//
//  LoginView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 9.08.2025.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var loginModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                Form{
                    if !loginModel.errorMessage.isEmpty{
                        Text(loginModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    TextField("Email Adress", text: $loginModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $loginModel.password)
                    
                }
                .frame(height: 200)
                .cornerRadius(20)
                BigButton(title: "Login", action: {loginModel.login()})
                Spacer()
                
                VStack{
                    Text("Do you have a account?")
                    NavigationLink("Create a new account", destination: RegisterView())
                }.padding(.bottom, 150)
            }
        }
    }
}

#Preview {
    LoginView()
}
