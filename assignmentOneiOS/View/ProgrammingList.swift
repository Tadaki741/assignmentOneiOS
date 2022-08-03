//
//  ProgrammingList.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//


import SwiftUI

struct ProgrammingList: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false;
    
    var body: some View {
        
        VStack{
            //A Picker to change light theme and dark theme
            Picker("Mode",selection: $isDarkMode){
                Text("Light mode ☀️").tag(false);
                Text("Dark mode 🌙").tag(true)
            }.pickerStyle(SegmentedPickerStyle()).padding()
            //---------------------PICKER--------------
            
            
            //--------------NAVIGATION VIEW------------
            NavigationView{
                
                List(dataList, id: \.self.name){programming in
                    
                    NavigationLink{
                        ProgrammingCard(programmingLanguage: programming)}
                
                    //This is the label for each card
                    label: {
                        ProgrammingRow(programmingnLanguage: programming)
                    }.navigationTitle("Programming Language").foregroundColor(.indigo)
                    
                }
            }
            //---------------NAVIGATION VIEW-----------
        }
        
        
    }
    
    
    
}

struct ProgrammingList_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingList()
    }
}
