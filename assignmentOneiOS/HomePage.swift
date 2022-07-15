//
//  HomePage.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 15/07/2022.
//

import SwiftUI

struct test: View {
let roundRect = RoundedRectangle(cornerRadius: 25.0)
var body: some View {
    
        Button( action: {
            print("click")
        }){
            Text("Login")
                .frame(width: UIScreen.main.bounds.width*0.4, height: 50, alignment: .center)
                .background(roundRect.fill(Color.orange))
                .overlay(roundRect.stroke())
        }
    
  }
}
