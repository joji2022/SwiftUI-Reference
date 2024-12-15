//
//  AppState.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 15/12/24.
//

import Foundation

enum RootViewType {
    case dashboard
    case learnNavigation
}

class AppState: ObservableObject {
    @Published var rootView: RootViewType = .dashboard
}
