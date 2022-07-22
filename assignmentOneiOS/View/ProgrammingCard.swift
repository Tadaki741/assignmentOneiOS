//
//  ProgrammingCard.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//

import SwiftUI
import CoreLocation

struct ProgrammingCard: View {
    
    var programmingLanguage: ProgrammingLanguage
    
    var body: some View {
        
        
        
            ZStack {
                ColorConstant.backgroundBlue.edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    
                    VStack{
                        
                        
                        CircleImage(image: programmingLanguage.image)
                        
                        
                        
                        Text(programmingLanguage.name).font(.system(size: 40)).foregroundColor(.white).bold();
                        
                        
                        
                        
                        
                        Image("rmit-logo-white")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 75);
                        
                        
                        
                        
                        Group{
                            InfoView(text: programmingLanguage.name, imageName: "envelope.fill")
                            InfoView(text: programmingLanguage.nameOfAuthor, imageName: "phone.fill")
                        }.padding();
                    
                        
                        
                        
                        
                    }
                }
                
                
            }
            
            .navigationTitle(programmingLanguage.name)
            .navigationBarTitleDisplayMode(.inline)
            .foregroundColor(.red);
            
            
        
        }
        
        
        
}

struct ProgrammingCard_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingCard(programmingLanguage: dataList[0])
    }
}
