//
//  ContentView.swift
//  yt-todo
//
//  Created by Koray Özdemir on 7.08.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
    //if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        }else{
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View{
        TabView{
            TodoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Todo List")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MainView()
}
