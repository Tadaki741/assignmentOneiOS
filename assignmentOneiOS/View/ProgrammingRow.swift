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
        HStack{
            programmingnLanguage.image.resizable()
                .frame(width: 50, height: 50)
            Text(programmingnLanguage.name);
            
        }
    }
}

struct ProgrammingRow_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingRow(programmingnLanguage: dataList[0])
        ProgrammingRow(programmingnLanguage: dataList[1])
        ProgrammingRow(programmingnLanguage: dataList[4])
    }
}
