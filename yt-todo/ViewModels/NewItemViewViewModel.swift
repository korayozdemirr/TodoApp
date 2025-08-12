//
//  NewItemViewViewModel.swift
//  yt-todo
//
//  Created by Koray Özdemir on 11.08.2025.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class NewItemViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init(){
        
    }
    
    func save(){
        guard canSave else{
            return
        }
        guard let uId = Auth.auth().currentUser?.uid else{
                return
        }
        
        let newItemId = UUID().uuidString
        let newItem = TodoListItem(
            id: newItemId,
            title: title,
            dueDate: dueDate.timeIntervalSince1970,
            createdAt: Date().timeIntervalSince1970,
            isDone: false
        )
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newItemId)
            .setData(newItem.asDictionary()) 
        
    }
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard dueDate >= Date().addingTimeInterval(-86400) else{
            return false
        }
        return true
    }
}
