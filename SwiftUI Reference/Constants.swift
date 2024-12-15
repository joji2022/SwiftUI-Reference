//
//  Constants.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import Foundation

struct Constants {
    static let SWIFT_UI_REFERENCES = "SwiftUI References"
    static let GET_STARTED_WITH_APPS = "Get Started with Apps"
    static let KEEP_GOING_WITH_APPS = "Keep Going with Apps"
    static let ABOUT_ME_APP = "About Me App"
    static let ORGANISING_WITH_GRIDS = "Organising with Grids"
    static let EDITING_GRIDS = "Editing Grids"
}

struct NavigationTitles {
    static let NAVIGATION_SPLIT_VIEW = "Navigation Split View"
}


struct AppDescriptions {
    static let GET_STARTED_WITH_APPS = """
- Container Views
    - HStack, VStack, ZStack
- Modifiers
    .resizable(), .font(.caption), .scaleToFit()
- Multicolor symbols
"""
    
    static let KEEP_GOING_WITH_APPS = """
— Learn about state (Current value of a variable) and data flow in SwiftUI.  A state change is when the value of one or more variables change in the app.
– SwiftUI can update the view automatically whenever the state changes.
– Use state property to update a view.
– @State property wrapper.
– ScaleEffect Modifier.
– Adding animation (.default, .spring etc. )
– @Binding property wrapper.
— NavigationStack in SwiftUI
— NavigationSplitView
— Construct data model using ObservableObject. 
— Make the model data accessible to the entire app (@EnvirornmentObject).
— Custom Toolbar
— Form view.
— Dismiss a view
"""
    
}
