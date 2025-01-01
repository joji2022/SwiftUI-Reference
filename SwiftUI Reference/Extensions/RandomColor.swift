//
//  RandomColor.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 01/01/25.
//

import SwiftUI

extension Color {
    /// Generates a random color with random RGB values.
    static var random: Color {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
