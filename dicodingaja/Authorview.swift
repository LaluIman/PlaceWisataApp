//
//  Authorview.swift
//  dicodingaja
//
//  Created by Lalu Iman Abdullah on 07/05/24.
//

import SwiftUI

struct Authorview: View {
    var body: some View {
        VStack {
            Image("Author")
                .resizable()
                .scaledToFill()
                .frame(width: 240, height: 240)
            .clipShape(Circle())
            Text("Lalu Iman Abdullah")
                .font(.title).bold()
            Text("Front-end & iOS developer")
        }
        .frame(height: 500, alignment: .top)
    }
}

#Preview {
    Authorview()
}
