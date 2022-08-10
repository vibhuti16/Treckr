//
//  Location.swift
//  Treckr
//
//  Created by Hasmukh Shah on 09/08/22.
//

import Foundation

struct Location : Decodable,Identifiable{
    let id : Int
    let name : String
    let country: String
    let description : String
    let more : String
    let latitude : Double
    let longitude: Double
    let heroPicture : String
    let advisory : String
    
    static let example = Location(id: 1, name: "Smoky mountains", country: "United States", description: "A great place to visit", more: "More text here", latitude: 35.6532, longitude: -83.5060, heroPicture: "smokies", advisory: "Beware of the bears!")
}
