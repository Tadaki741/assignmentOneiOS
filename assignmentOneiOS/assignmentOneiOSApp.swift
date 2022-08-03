//
//  assignmentOneiOSApp.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 15/07/2022.
//

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
                Image(systemName: "list.bullet")
                Text("List")
                
                }
                Text("Profile")
                    .tabItem{
                        Image(systemName: "person")
                        Text("Profile")
                    }
                      
            }.preferredColorScheme(isDarkMode ? .dark : .light)
                .accentColor(.primary)
            
        }
    }
}
