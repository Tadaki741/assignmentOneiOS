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
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D;
    @State private var region = MKCoordinateRegion();
    var markers: [Marker]
    
    
    //Initialize the markers list first, otherwise it will encounter an error because the self element run after the field property
    init(coordinate: CLLocationCoordinate2D){
        self.coordinate = coordinate;
        markers = .init(); // <--   
        markers.append(Marker(location: MapMarker(coordinate: coordinate, tint: .blue)))//Add the location of the country into the list
    }
    
    var body: some View {
        
        Map(coordinateRegion: $region, showsUserLocation: true,annotationItems: markers){ marker in
            marker.location
        }.onAppear(){
            setRegion(coordinate)
        }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 30, longitudeDelta: 30))
    }
}


