//
//  RegisterView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 9.08.2025.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName  = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                HeaderView()
                Form{
                    Section(header: Text("Register")){
                        TextField("Full Name", text: $fullName)
                            .autocorrectionDisabled()
                        TextField("Email Adress", text: $email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)
                    }
                }
                .frame(height: 200)
                BigButton(title: "Register", action: {})
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
