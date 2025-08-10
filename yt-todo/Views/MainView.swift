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
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            TodoListView()
        }else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
