//
//  LoginViewViewModel.swift
//  yt-todo
//
//  Created by Koray Özdemir on 10.08.2025.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage = ""
    init() {
        
    }
    func login(){
        guard validate() else { return }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields!"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid email format!"
            return false
        }
       return true
    }
}
