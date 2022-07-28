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
            //An image
//            programmingnLanguage.image.resizable()
//                .frame(width: 50, height: 50)
//          use the url of the string
            AsyncImage(url: URL(string: programmingnLanguage.imageName)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 60, height: 60)
            //a text to describe the name of the item in the card
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
