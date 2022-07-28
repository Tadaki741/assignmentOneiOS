//
//  HomePage.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 15/07/2022.
//

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



