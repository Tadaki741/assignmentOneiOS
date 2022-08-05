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
