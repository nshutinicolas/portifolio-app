//
// HomeView.swift
// Portifolio
//
// Created by Nicolas Nshuti on 06/03/2023
// Copyright © 2023 GHOST TECHNOLOGIES LLC. All rights reserved.
//


import SwiftUI

struct HomeView: View {
    
    let skills: [Skill] = [
        Skill(id: "1", skillName: "iOS", image: "iphone"),
        Skill(id: "2", skillName: "Swift 5", image: "swift"),
        Skill(id: "3", skillName: "WatchOS", image: "applewatch"),
        Skill(id: "4", skillName: "Vapor", image: "shippingbox.fill"),
        Skill(id: "5", skillName: "Web", image: "safari"),
        Skill(id: "6", skillName: "typing", image: "keyboard")
    ]
    let experience: [Experience] = [
        .init(id: "1", companyName: "Green stand", role: "iOS Developer", duration: "Jan 2023 - Present"),
        .init(id: "2", companyName: "Ghost Technology", role: "iOS Developer", duration: "1st March 2022 - Present")
    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Top Section
                VStack(alignment: .center, spacing: 10) {
                    Image("Profile")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(
                            Circle()
                        )
                    Text("iOS Developer")
                        .font(Montserrat.medium.font(size: 16))
                    
                    HStack(spacing: 2) {
                        Image(systemName: "location.fill")
                        Text("Kigali, RW")
                            .font(Montserrat.regular.font(size: 14))
                    }
                }
                .frame(maxWidth: .infinity)
                // Description
                Text("Immensely passionate about iOS and relted technologies. I am also a vapor enthusiast and I love to tinker with tech")
                    .font(Montserrat.italics.font(size: 14))
                // Skills
                FoldableList(title: "Skills") {
                    VStack(alignment: .leading) {
                        LazyVGrid(columns: columns, spacing: 8) {
                            ForEach(skills) { skill in
                                CardView(title: skill.skillName, image: skill.image)
                            }
                        }
                    }
                }
                FoldableList(title: "Experience") {
                    DotLineList(experience: experience)
                }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
//            .padding()
    }
}
