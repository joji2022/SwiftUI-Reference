//
//  DashboardCellView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUI

struct DashboardCellView: View {
    
    let dashboardItem: DashboardCellModel
    var destinationType: DestinationType {
        dashboardItem.destinationType
    }
    var label: String {
        dashboardItem.label
    }
    
    var body: some View {
        NavigationLink {
            AppDescriptionView(dashboardItem: dashboardItem)
                .navigationTitle(label)
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            Text(label)
                .font(.system(size: 18))
        }
    }
}

#Preview {
    DashboardCellView(dashboardItem: DashboardCellModel(label: Constants.GET_STARTED_WITH_APPS, destinationType: .getStartedWithApps, description: AppDescriptions.GET_STARTED_WITH_APPS))
}
