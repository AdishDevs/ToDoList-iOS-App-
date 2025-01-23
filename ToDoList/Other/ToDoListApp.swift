//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Admin on 2025-01-21.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
