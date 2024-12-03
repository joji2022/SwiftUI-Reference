//
//  ContentView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    
    let viewModel = DashboardViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dashboardItems) { item in
                    DashboardCellView(label: item.label, destinationView: item.destination)
                }
            }
            .navigationTitle(Constants.SWIFT_UI_REFERENCES)
        }
        
    }
}

#Preview {
    ContentView()
}
