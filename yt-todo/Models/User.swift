//
//  User.swift
//  yt-todo
//
//  Created by Koray Özdemir on 10.08.2025.
//

import Foundation

struct User: Codable{
    let id: String
    let fullName: String
    let email: String
    let createdAt: TimeInterval
    let updatedAt: TimeInterval
}
