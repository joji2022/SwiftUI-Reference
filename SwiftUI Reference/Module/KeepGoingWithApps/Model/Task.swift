//
//  Task.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 29/12/24.
//

import SwiftUICore

struct Task: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
    let offset = CGSize.zero
    let rotation: Angle = Angle(degrees: 0)
}
