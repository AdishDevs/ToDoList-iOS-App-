//
//  ContentView.swift
//  ToDoList
//
//  Created by Admin on 2025-01-21.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
            accountView
        } else {
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView: some View{
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle.fill")
                }
        }
    }
}

#Preview {
    MainView()
}


