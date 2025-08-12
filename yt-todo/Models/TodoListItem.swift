//
//  TodoListItem.swift
//  yt-todo
//
//  Created by Koray Özdemir on 12.08.2025.
//

import Foundation

struct TodoListItem: Codable, Identifiable{
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdAt: TimeInterval
    var isDone: Bool
    
    mutating func setDone (_ state: Bool) {
        isDone = state
    }
}
