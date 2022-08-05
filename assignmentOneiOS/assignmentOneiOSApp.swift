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

@main
struct assignmentOneiOSApp: App {
    
    @AppStorage("isDarkMode") private var isDarkMode = false;
    
    var body: some Scene {
        WindowGroup {
            
            TabView{
                NavigationView{
                    LoginScreen()
                }.tabItem{
                Image(systemName: "key")
                Text("Login")
                
                }
                
                
                //Display the application description
                VStack{
                
                    Text("What you can find in this app are:" )
                    Text("1. Top programming language around the world")
                    Text("2. Their logo")
                    Text("3. Author who invent the language")
                    Text("4. Main application of the language")
                    Text("5. Country of origin where the language is published")
                    Text("6. The year they are published")
                    
                }.tabItem{
                        Image(systemName: "info.circle")
                        Text("Application Information")
                    }
                      
            }.preferredColorScheme(isDarkMode ? .dark : .light)
                .accentColor(.primary)
            
        }
    }
}
