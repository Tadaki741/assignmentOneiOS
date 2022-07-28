//
//  ContentView.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 15/07/2022.
// Initial commit on 15/07/2022
//

import SwiftUI

struct LoginScreen: View {
    
    @State var signInSuccess = false
    
    var body: some View {
        return Group {
            if signInSuccess {
                HomePage();
            }
            else {
                LoginFormView(signInSuccess: $signInSuccess)
            }
        }
    }
}

struct LoginFormView : View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    @State private var showError = false
    
    @Binding var signInSuccess: Bool
    
    var body: some View {
        
        let roundRect = RoundedRectangle(cornerRadius: 25.0)
        
        ZStack{
            
            VStack {
                HStack {
                    Text("Username: ")
                    TextField("Enter your username", text: $userName)
                }.padding()
                
                HStack {
                    Text("Password: ")
                    TextField("Enter your password", text: $password)
                        .textContentType(.password)
                }.padding()
                
                
                Button( action: {
                    // Your auth logic
                    if(self.userName == "Admin" && self.password == "Admin") {
                        self.signInSuccess = true
                    }
                    else {
                        self.showError = true
                    }
                }){
                    Text("Login")
                        .frame(width: UIScreen.main.bounds.width*0.4, height: 50, alignment: .center)
                        .background(roundRect.fill(Color.orange))
                        .overlay(roundRect.stroke())
                
                if showError {
                    Text("Incorrect username/password").foregroundColor(Color.red)
                }
            }
            
            
            
        }
        
    }
}
}
    


