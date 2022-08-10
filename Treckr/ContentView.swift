//
//  ContentView.swift
//  Treckr
//
//  Created by Hasmukh Shah on 08/08/22.
//

import SwiftUI

struct ContentView: View {
    
    let location : Location
    
    var body: some View {
        ScrollView{
            Image(location.heroPicture).resizable().scaledToFit()
            Text(location.name).font(.largeTitle)
                .bold().multilineTextAlignment(.center)
            Text(location.country).font(.title).foregroundColor(.secondary).padding(.bottom)
            Text(location.description).padding(.horizontal)
            Text("Did you know?").font(.title3).bold().padding(.top)
            Text(location.more).padding(.horizontal)
            
        }.navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
