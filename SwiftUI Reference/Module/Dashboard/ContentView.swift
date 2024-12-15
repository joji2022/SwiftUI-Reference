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
            VStack {
                List {
                    ForEach(viewModel.dashboardItems) { item in
                        DashboardCellView(dashboardItem: item)
                    }
                }
                .navigationTitle(Constants.SWIFT_UI_REFERENCES)
                .contentMargins(.top, 15)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
