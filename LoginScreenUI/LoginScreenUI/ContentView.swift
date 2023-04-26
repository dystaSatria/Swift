//
//  ContentView.swift
//  LoginScreenUI
//
//  Created by Reza Dysta SATRIA on 26.04.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var loginScreen = false
    
    
      
    var body: some View {
        NavigationView {
            ZStack{
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                
                Circle().scale(1.3).foregroundColor(.white)
                
                VStack{
                    Text("Login").font(.largeTitle)
                        .bold()
                        .padding()
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red,width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        authentication(username: username, password: password)
                        
                    }.foregroundColor(.white)
                        .frame(width: 300,height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    NavigationLink(destination : Text ("You are logged in to @\(username)"), isActive: $loginScreen){
                        EmptyView()
                    }
                    
                    
                }
                
            }
            
        }.navigationBarHidden(true)
    }
    
    
    func authentication(username : String,password : String){
        if username.lowercased() == "dyzzta"{
            wrongUsername = 0
            if password.lowercased() == "dyzzta123"{
                wrongPassword = 0
                loginScreen = true
            } else {
                wrongPassword = 2
            }
        }else {
            wrongUsername = 2
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
