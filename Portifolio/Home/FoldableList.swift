//
// FoldableList.swift
// Portifolio
//
// Created by Nicolas Nshuti on 06/03/2023
// Copyright © 2023 GHOST TECHNOLOGIES LLC. All rights reserved.
//


import SwiftUI

struct FoldableList<Content: View>: View {
    
    private let title: String
    @State private var isOpen: Bool = false
    let content: () -> Content
    
    init(title: String, @ViewBuilder content: @escaping () -> Content) {
        self.title = title
        self.content = content
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .fontWeight(.bold)
                Image(systemName: "chevron.down")
                    .font(.system(size: 15, weight: .bold, design: .default))
                    .rotationEffect(isOpen ? .zero : .degrees(180))
            }
            .onTapGesture {
                withAnimation(.linear(duration: 0.35)) {
                    isOpen.toggle()
                }
            }
            if isOpen {
                content()
                    .padding(.top, 20)
            }
        }
    }
}

struct FoldableList_Previews: PreviewProvider {
    
    static var previews: some View {
        GeometryReader { proxy in
            FoldableList(title: "Skills") {
                LazyVGrid(columns: [.init(), .init(), .init()]) {
                    ForEach(0..<6, id: \.self) { i in
                        VStack {
                            Image(systemName: "house.fill")
                                .resizable()
                                .scaledToFit()
                            Text("Title: \(i)")
                        }
                    }
                }
            }
            .padding()
        }
    }
}
