//
//  TreckrApp.swift
//  Treckr
//
//  Created by Hasmukh Shah on 08/08/22.
//

import SwiftUI

@main
struct TreckrApp: App {
    
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location : locations.primary)
                }.tabItem{
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView{
                    WorldView()
                }.tabItem{
                    Image(systemName: "star.fill")
                    Text("Location")
                }
                NavigationView{
                    TipsView()
                }.tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }.environmentObject(locations)
        }
    }
}
