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
//Display the list of programming languages

struct HomePage: View {
    
    
    
    var body: some View {

        ProgrammingList();
        
    }
    
    
    
}

struct HomePagePreviews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}



