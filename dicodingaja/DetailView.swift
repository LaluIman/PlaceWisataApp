//
//  DetailView.swift
//  dicodingaja
//
//  Created by Lalu Iman Abdullah on 07/05/24.
//

import SwiftUI

struct DetailView: View {
    let place: Place
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Image(place.locationImage)
                        .resizable()
                        .scaledToFill()
                    .frame(width: 400, height: 300)
                    .padding()
                    Text(place.name)
                        .font(.title).bold()
                    Text(place.location)
                        .padding(.bottom)
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text(place.stars)
                    }
                    .font(.system(size: 20, weight: .semibold))
                    Text(place.info)
                        .padding()
                }
                    
            }
        }
    }
}

#Preview {
    DetailView(place: Place(
        name:"Candi Borobudur",
        location: "Magelang, Jawa Tengah",
        info: "Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
        locationImage: "borobudur",
        stars: "4.7/5"
    ))
}
