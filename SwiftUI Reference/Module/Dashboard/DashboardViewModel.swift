//
//  DashboardViewModel.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

struct DashboardViewModel {
    
    let dashboardItems: [DashboardCellModel] =
    [
        DashboardCellModel(label: Constants.GET_STARTED_WITH_APPS, destination: GetStartedWithAppsView()),
        DashboardCellModel(label: Constants.KEEP_GOING_WITH_APPS, destination: GetStartedWithAppsView()),
        DashboardCellModel(label: Constants.ABOUT_ME_APP, destination: GetStartedWithAppsView()),
        DashboardCellModel(label: Constants.ORGANISING_WITH_GRIDS, destination: GetStartedWithAppsView()),
        DashboardCellModel(label: Constants.EDITING_GRIDS, destination: GetStartedWithAppsView())
    ]
    
}
