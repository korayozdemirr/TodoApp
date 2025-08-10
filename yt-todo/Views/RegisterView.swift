//
//  RegisterView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 9.08.2025.
//

import SwiftUI

struct RegisterView: View {

    @StateObject var registerModel = RegisterViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                Form{
                    if !registerModel.errorMessage.isEmpty{
                        Text(registerModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    Section(header: Text("Register")){
                        TextField("Full Name", text: $registerModel.fullName)
                            .autocorrectionDisabled()
                        TextField("Email Adress", text: $registerModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Password", text: $registerModel.password)
                    }
                }
                .frame(height: 300)
                BigButton(title: "Register", action: {
                    registerModel.register()
                })
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
