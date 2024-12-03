//
//  SwiftUI_ReferenceApp.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUI

@main
struct SwiftUI_ReferenceApp: App {
    
    init() {
            // Customize UINavigationBar appearance
            let appearance = UINavigationBarAppearance()
        appearance.backButtonAppearance.normal.titleTextAttributes =  [.foregroundColor: UIColor.clear]
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
