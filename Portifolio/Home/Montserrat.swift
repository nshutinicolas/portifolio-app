//
// Montserrat.swift
// Portifolio
//
// Created by Nicolas Nshuti on 06/03/2023
// Copyright © 2023 GHOST TECHNOLOGIES LLC. All rights reserved.
//


import SwiftUI

enum Montserrat {
    case bold
    case regular
    case medium
    case light
    case italics
    
    func font(size: CGFloat) -> Font {
        switch self {
        case .bold: return .custom("Montserrat-Bold", size: size)
        case .regular: return .custom("Montserrat-Regular", size: size)
        case .medium: return .custom("Montserrat-Medium", size: size)
        case .light: return .custom("Montserrat-Light", size: size)
        case .italics: return .custom("Montserrat-Italic", size: size)
        }
    }
}

