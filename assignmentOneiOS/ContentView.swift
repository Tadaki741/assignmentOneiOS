//
//  ContentView.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 15/07/2022.
// Initial commit on 15/07/2022
//

import SwiftUI

struct ContentView: View {
    
    @State var signInSuccess = false
    
    var body: some View {
        return Group {
            if signInSuccess {
                HomePage()
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
        VStack {
            HStack {
                Text("User name")
                TextField("type here", text: $userName)
            }.padding()
            
            HStack {
                Text(" Password")
                TextField("type here", text: $password)
                    .textContentType(.password)
            }.padding()
            
            Button(action: {
                // Your auth logic
                if(self.userName == "Admin" && self.password == "Admin") {
                    self.signInSuccess = true
                }
                else {
                    self.showError = true
                }
                
            }) {
                Text("Sign in")
            }
            
            if showError {
                Text("Incorrect username/password").foregroundColor(Color.red)
            }
        }
    }
}
    


