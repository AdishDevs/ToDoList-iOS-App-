//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Admin on 2025-01-22.
//

import Foundation

///ViewModel for list of items view
///Primary  tab
class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false 
    
    init(){}
}
