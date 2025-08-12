//
//  TodoListView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 10.08.2025.
//

import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewViewModel()
    private let userId: String
    init(userId:String){
        self.userId = userId
    }
    var body: some View {
        NavigationView {
            VStack{
                Text("Hello")
            }
            .navigationTitle("Tasks")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                }label: {
                    Image(systemName: "plus")
                }
                
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content:{
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
        
    }
}

#Preview {
    TodoListView(userId:"koray")
}
