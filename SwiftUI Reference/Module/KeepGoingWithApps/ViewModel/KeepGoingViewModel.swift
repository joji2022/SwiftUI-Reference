//
//  KeepGoingWithAppsViewModel.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 10/12/24.
//

import Foundation

class KeepGoingViewModel: ObservableObject {
    
    @Published var tasks = [
        Task(name: "Learn", emoji: "book.pages"),
        Task(name: "Workout", emoji: "dumbbell"),
        Task(name: "Learn SwiftUI", emoji: "swift"),
        Task(name: "Electronics Project", emoji: "memorychip"),
        Task(name: "Draw", emoji: "pencil"),
        Task(name: "Movie", emoji: "film"),
        Task(name: "Piano", emoji: "pianokeys"),
        Task(name: "Walk", emoji: "figure.walk.motion"),
        Task(name: "Drive", emoji: "car")
    ]
    
    let dashboardItems: [DashboardCellModel] = [
        DashboardCellModel(label: NavigationTitles.BINDING, destinationType: .binding, description: Constants.EMPTY_STRING),
        DashboardCellModel(label: NavigationTitles.NAVIGATION_SPLIT_VIEW, destinationType: .navigation, description: Constants.EMPTY_STRING),
        DashboardCellModel(label: NavigationTitles.KEEP_GOING_WITH_APPS, destinationType: .keepGoingWithApps, description: Constants.EMPTY_STRING)
    ]
    
}
