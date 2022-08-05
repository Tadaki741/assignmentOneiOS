/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 2
  Author: Vo Dai Duong
  ID: S3821186
  Created  date: 31/07/2022
  Last modified: 05/08/2022
  Acknowledgement: Acknowledge the resources that you use here.
*/

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
                
                //Text description that welcome the user
                Text("Popular languages in Computer Science")
                    .font(Font.system(size: 46, weight: .bold))
                    .multilineTextAlignment(.center)
                    .overlay {
                        LinearGradient(
                            colors: [.red, .blue, .green, .yellow],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        .mask(
                            Text("Popular languages in Computer Science")
                                .font(Font.system(size: 46, weight: .bold))
                                .multilineTextAlignment(.center)
                        )
                    }
                
                //Username login
                HStack {
                    Text("Username: ")
                    TextField("Enter your username", text: $userName)
                }.padding()
                
                
                //Password login
                HStack {
                    Text("Password: ")
                    TextField("Enter your password", text: $password)
                        .textContentType(.password)
                }.padding()
                
                
                //Button to login
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
    


