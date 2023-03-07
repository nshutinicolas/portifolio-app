//
// DotLineList.swift
// Portifolio
//
// Created by Nicolas Nshuti on 07/03/2023
// Copyright © 2023 GHOST TECHNOLOGIES LLC. All rights reserved.
//


import SwiftUI

struct DotLineList: View {
    
    let experience: [Experience]
    
    init(experience: [Experience]) {
        self.experience = experience
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(experience) { experience in
                VStack(alignment: .leading, spacing: 4) {
                    Circle()
                        .frame(width: 10, height: 10)
                    HStack(alignment: .top, spacing: 12) {
                        Rectangle()
                            .frame(width: 2.0)
                        VStack(alignment: .leading, spacing: 10) {
                            Text(experience.role)
                                .font(Montserrat.bold.font(size: 18))
                            Text(experience.companyName)
                                .font(Montserrat.medium.font(size: 16))
                            Text(experience.duration)
                                .font(Montserrat.italics.font(size: 14))
                        }
                        .padding(.vertical, 8)
                    }
                    .padding(4)
                }
            }
        }
        .fixedSize()
    }
}

struct DotLineList_Previews: PreviewProvider {
    static let sampleExperience: [Experience] = [
        .init(id: "1", companyName: "Green stand", role: "iOS Developer", duration: "Jan 2023 - Present"),
        .init(id: "2", companyName: "Ghost Technology", role: "iOS Developer", duration: "1st March 2022 - Present")
    ]
    static var previews: some View {
        GeometryReader { proxy in
            DotLineList(experience: sampleExperience)
                .padding()
        }
    }
}
