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
