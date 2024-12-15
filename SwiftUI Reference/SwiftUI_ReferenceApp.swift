//
//  SwiftUI_ReferenceApp.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUI

@main
struct SwiftUI_ReferenceApp: App {
    
    @StateObject var appSate = AppState()
    
    init() {
            // Customize UINavigationBar appearance
            let appearance = UINavigationBarAppearance()
        appearance.backButtonAppearance.normal.titleTextAttributes =  [.foregroundColor: UIColor.clear]
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    
    var body: some Scene {
        
        WindowGroup {
            RootViewSelector()
                .environmentObject(appSate)
        }
    }
}


struct RootViewSelector: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        switch appState.rootView {
        case .learnNavigation:
            LearnNavigationSplitView()
        case .dashboard:
            ContentView()
        }
    }
    
}
