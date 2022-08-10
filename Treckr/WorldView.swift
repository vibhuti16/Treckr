//
//  WorldView.swift
//  Treckr
//
//  Created by Hasmukh Shah on 09/08/22.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations : Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 51.507222, longitude:-0.1275
        ), span: MKCoordinateSpan(
            latitudeDelta: 40, longitudeDelta:40
        )
    )
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places){
            location in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                NavigationLink(destination: ContentView(location: location)){
                Image(location.country)
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 80, height: 40, alignment: Alignment.center)
                    .shadow(color: Color.primary, radius: 3, x: 0, y: 0)
                }
            }
        }.navigationTitle("Location")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
