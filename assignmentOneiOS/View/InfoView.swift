//
//  InfoView.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//

import SwiftUI

struct InfoView: View {
    
    //Add some properties
    let text: String
    let imageName: String
    
    init(text: String, imageName: String){
        self.text = text;
        self.imageName = imageName;
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
        
        //Being contained above InfoView
            .overlay(
            
                HStack{
                    Image(systemName: self.imageName).foregroundColor(.red)
                    Text(self.text).foregroundColor(.blue)
                    
                }
            
            )
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "0903351295",imageName: "phone.fill").preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        InfoView(text: "tomhuynh@gmail.com", imageName: "envelope.fill").preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
