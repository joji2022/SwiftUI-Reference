//
//  DashboardCellModel.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import Foundation
import SwiftUICore

struct DashboardCellModel<T: View>: Identifiable {
    var id = UUID()
    var label: String
    var destination: T
}
