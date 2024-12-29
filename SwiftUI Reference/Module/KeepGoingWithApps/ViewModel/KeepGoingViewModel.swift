//
//  KeepGoingWithAppsViewModel.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 10/12/24.
//

import Foundation

class KeepGoingViewModel {
    
    let dashboardItems: [DashboardCellModel] = [
        DashboardCellModel(label: NavigationTitles.BINDING, destinationType: .binding, description: Constants.EMPTY_STRING),
        DashboardCellModel(label: NavigationTitles.NAVIGATION_SPLIT_VIEW, destinationType: .navigation, description: Constants.EMPTY_STRING),
        DashboardCellModel(label: NavigationTitles.KEEP_GOING_WITH_APPS, destinationType: .keepGoingWithApps, description: Constants.EMPTY_STRING)
    ]
    
}
