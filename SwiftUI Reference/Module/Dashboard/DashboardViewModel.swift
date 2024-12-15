//
//  DashboardViewModel.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUICore

struct DashboardViewModel {
    
    let dashboardItems: [DashboardCellModel] =
    [
        DashboardCellModel(label: Constants.GET_STARTED_WITH_APPS, destinationType: .getStartedWithApps, description: AppDescriptions.GET_STARTED_WITH_APPS),
        DashboardCellModel(label: Constants.KEEP_GOING_WITH_APPS, destinationType: .keepGoingWithApps, description: AppDescriptions.KEEP_GOING_WITH_APPS),
        DashboardCellModel(label: Constants.ABOUT_ME_APP, destinationType: .keepGoingWithApps, description: AppDescriptions.KEEP_GOING_WITH_APPS),
        DashboardCellModel(label: Constants.ORGANISING_WITH_GRIDS, destinationType: .keepGoingWithApps, description: AppDescriptions.KEEP_GOING_WITH_APPS),
        DashboardCellModel(label: Constants.EDITING_GRIDS, destinationType: .keepGoingWithApps, description: AppDescriptions.KEEP_GOING_WITH_APPS)
    ]
    
}
