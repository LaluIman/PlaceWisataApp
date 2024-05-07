//
//  ListView.swift
//  dicodingaja
//
//  Created by Lalu Iman Abdullah on 07/05/24.
//

import SwiftUI

struct ListView: View {
    var place: Place
    var body: some View {
            HStack{
                Image(place.locationImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack{
                    Text(place.name)
                        .font(.system(size: 20)).bold()
                    HStack{
                        Image(systemName: "star.fill")
                            .font(.system(size: 15))
                            .foregroundColor(.yellow)
                        Text(place.stars)
                    }
                }
                .frame(width: 200)
            }
    }
}

#Preview {
    ListView(place: Place(
        name:"Candi Borobudur",
        location: "Magelang, Jawa Tengah",
        info: "Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
        locationImage: "borobudur",
        stars: "4.7/5"
    ))
}
