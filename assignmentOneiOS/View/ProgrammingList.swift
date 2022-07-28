//
//  ProgrammingList.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//


import SwiftUI

struct ProgrammingList: View {
    var body: some View {
        
        NavigationView{
            
            List(dataList, id: \.self.name){programming in
                
                NavigationLink{
                    ProgrammingCard(programmingLanguage: programming)}
            
                label: {
                    ProgrammingRow(programmingnLanguage: programming)
                }.navigationTitle("Programming Language")
                
            }
        }
        
    }
}

struct ProgrammingList_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingList()
    }
}
