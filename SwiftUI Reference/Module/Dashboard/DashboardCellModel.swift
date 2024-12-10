//
//  DashboardCellModel.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import Foundation
import SwiftUICore

enum DestinationType {
    case getStartedWithApps
    case keepGoingWithApps
}

struct DashboardCellModel: Identifiable {
    var id = UUID()
    var label: String
    var destinationType: DestinationType
    var description: String
}
