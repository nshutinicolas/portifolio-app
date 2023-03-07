//
// CardView.swift
// Portifolio
//
// Created by Nicolas Nshuti on 06/03/2023
// Copyright © 2023 GHOST TECHNOLOGIES LLC. All rights reserved.
//


import SwiftUI

struct CardView: View {
    
    private let title: String
    private let image: String
    
    init(title: String, image: String) {
        self.title = title
        self.image = image
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: image)
                .font(.system(size: 35, weight: .medium))
//                .resizable()
//                .scaledToFit()
//                .padding()
            Text(title)
                .font(Montserrat.medium.font(size: 16))
        }
        .padding()
        .background(.thinMaterial)
        .cornerRadius(8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "house", image: "house")
    }
}
