//
//  ContentView.swift
//  dicodingaja
//
//  Created by Lalu Iman Abdullah on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var placeManager: PlaceManager
    @State var selected: Place? = nil
    var body: some View {
        NavigationView{
                List(placeManager.places){ place in
                    NavigationLink(destination: DetailView(place: place)){
                        ListView(place: place)
                            .onTapGesture {
                                selected = place
                            }
                    }
                }
                .listStyle(.plain)
            
            .navigationTitle("Place")
            .navigationBarItems(trailing:
                NavigationLink(destination: Authorview()){
                    HStack{
                        Image(systemName: "person.fill")
                            .foregroundColor(.blue)
                        Text("Author")
                    .font(.headline).bold()
                    .foregroundStyle(.blue)
                    }
                }
            )
        }
    }
}

#Preview {
    ContentView(placeManager: PlaceManager())
}
