//
//  MapView.swift
//  Landmarks
//
//  Created by Win Yu Maung on 11/07/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var locationCoordinate : CLLocationCoordinate2D
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region : MKCoordinateRegion{
        MKCoordinateRegion(
            center: locationCoordinate, span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

#Preview {
    MapView(locationCoordinate: landmarks[1].locationCoordinate)
}
