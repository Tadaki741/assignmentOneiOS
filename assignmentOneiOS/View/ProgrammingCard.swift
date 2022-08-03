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
                
                
                ScrollView{
                    
                    VStack{
                        MapView(coordinate: self.programmingLanguage.locationCoordinate)
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 500)
                            .overlay(Rectangle().stroke(.black,lineWidth: 5))
                        
                        
                        
                        HStack{
                            
                            //Author name of the language
                            Text(programmingLanguage.nameOfAuthor).font(.system(size: 40)).foregroundColor(.cyan).bold();
                            
                            //Logo of the programming language
                            AsyncImage(url: URL(string: self.programmingLanguage.imageName)) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 90, height: 90)
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 90)
                            .overlay(Rectangle().stroke(.blue,lineWidth: 1))
                        }
                        
                        
                        //Group of the year published and original country
                        VStack{
                            Group{
                                Text("Year published: " + self.programmingLanguage.introducedYear);
                                Text("Country of origin: " + self.programmingLanguage.countryOrigin);
                            }.padding()
                            
                        }
                    
                        
                        
                        //Description of the programming language
                        Text(programmingLanguage.application).foregroundColor(.cyan).frame(alignment: .center)
                    
                        
                        
                        
                        
                    }
                }.padding().lineSpacing(5)
                
            }.navigationBarTitleDisplayMode(.inline).foregroundColor(.red);
        }
}

struct ProgrammingCard_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammingCard(programmingLanguage: dataList[0])
    }
}
