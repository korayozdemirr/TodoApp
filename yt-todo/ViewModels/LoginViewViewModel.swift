//
//  LoginViewViewModel.swift
//  yt-todo
//
//  Created by Koray Özdemir on 10.08.2025.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    init() {
        
    }
}
