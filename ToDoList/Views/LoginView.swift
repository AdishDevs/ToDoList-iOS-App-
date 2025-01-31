//
//  LoginView.swift
//  ToDoList
//
//  Created by Admin on 2025-01-22.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()

    var body: some View {
        NavigationView {
            VStack{
                //Header
                HeaderView(title: "To Do List",
                           subtitle:"Get things done",
                           angle:15,
                           background:.pink)
                .offset(y:40)
                
                
                
                //Login Form
                Form{
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    
                    TLButton(title: "Log In",
                             background: .blue
                    ) {
                        // Attempt log in
                        viewModel.login()
                    }
                     .padding()
                    
                }
                .offset(y:-30)
                
                //Create Account
                VStack{
                    Text("New around here?")
                    
                    NavigationLink("Create An Account",destination: RegisterView())
                        
                    
                }
                .padding(.bottom,50)
                Spacer()
            }
        }
        Spacer()
    }
}

#Preview {
    LoginView()
}
