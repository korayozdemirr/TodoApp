//
//  LoginView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 9.08.2025.
//

import SwiftUI

struct LoginView: View {
    @State var email = "";
    @State var password = "";
    
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                Form{
                    TextField("Email Adress", text: $email)
                    SecureField("Password", text: $password)
                    
                }
                .frame(height: 150)
                .cornerRadius(20)
                Button(action:{}, label:{
                    ZStack {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundStyle(.primary)
                        Text("Login")
                            .foregroundStyle(.white)
                    }
                })
                .frame(height: 50)
                .padding(.horizontal)
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
