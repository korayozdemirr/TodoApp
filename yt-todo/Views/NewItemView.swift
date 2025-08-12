//
//  NewItemView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 11.08.2025.
//

import SwiftUI

struct NewItemView: View {
    @Binding var newItemPresented: Bool
    @StateObject var viewModel = NewItemViewViewModel()
    
    var body: some View {
        VStack{
            Text("New Task")
                .font(.headline)
                .bold()
                .padding(.top, 100)
            Form{
                TextField("Title", text:$viewModel.title)
                DatePicker("End Time", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                BigButton(title: "Add Task"){
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    }else{
                        viewModel.showAlert = true
                    }
                        
                }
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(title: Text("Error"), message: Text("Please fill all fields"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set:{ _ in
        
    }))
}
