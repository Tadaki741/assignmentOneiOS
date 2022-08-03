//
//  ProgrammingRow.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//

import SwiftUI

import SwiftUI

struct ProgrammingRow: View {
    
    var programmingnLanguage: ProgrammingLanguage;
    
    var body: some View {
        
        ZStack(alignment: .leading){
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.cyan)
                        .frame(height: 100)
                        .opacity(0.3)
                        
            HStack{

                AsyncImage(url: URL(string: programmingnLanguage.imageName)) { image in
                    image.resizable().padding()
                }
                    
                placeholder: {
                    ProgressView()
                }.frame(width: 60, height: 60)
                
                
                //a text to describe the name of the item in the card
                Text(programmingnLanguage.name).fontWeight(.bold);
                
            }
        }.padding()
        
        
        
        
        
    }
}

struct ProgrammingRow_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingRow(programmingnLanguage: dataList[0])
        ProgrammingRow(programmingnLanguage: dataList[1])
        ProgrammingRow(programmingnLanguage: dataList[4])
    }
}
