//
//  ProgrammingLanguage.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 22/07/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct ProgrammingLanguage: Identifiable{
    
    var id = UUID()
    var name: String
    var introducedYear: String
    var nameOfAuthor: String
    var countryOrigin: String
    var imageName: String
    
    //Application means it can be applied for example, web ? mobile ? embedded system ? game programming ? or multipurpose
    var application: String
    
    var image: Image{
        Image(imageName)
    }
    
    //Each programming language will have its own country of origin
    var locationCoordinate: CLLocationCoordinate2D
}
