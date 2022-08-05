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
                    }.navigationTitle("Top ten languages").foregroundColor(.cyan)
                    
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
