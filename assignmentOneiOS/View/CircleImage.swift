//
//  CircleImage.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//

import SwiftUI
//Step 1 - create a circle image
struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
    
            image
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color(.white),lineWidth: 2))
                .shadow(color: .red, radius: 15)
            //Use overlay for fitting into parent view
            
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("tom-huynh"))
            .preferredColorScheme(.dark)
    }
}
