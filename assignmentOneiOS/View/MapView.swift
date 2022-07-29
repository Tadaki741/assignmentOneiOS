//
//  MapView.swift
//  assignmentOneiOS
//
//  Created by Duong Vo Dai on 29/07/2022.
//

import SwiftUI
import MapKit


struct MapView: View {
    
    var coordinate: CLLocationCoordinate2D;
    @State private var region = MKCoordinateRegion();
    
    
    var body: some View {
        
            Map(coordinateRegion: $region)
            .onAppear{
                setRegion(coordinate)
                MapMarker(coordinate: coordinate,
                                  tint: Color.purple)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D){
        region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    }
}
