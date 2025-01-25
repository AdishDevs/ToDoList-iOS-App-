//
//  User.swift
//  ToDoList
//
//  Created by Admin on 2025-01-22.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
