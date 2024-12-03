//
//  DashboardCellView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUI

struct DashboardCellView<Destination: View>: View {
    
    var label: String
    var destinationView: Destination
    
    var body: some View {
        NavigationLink {
            destinationView
                .navigationTitle(label)
                .navigationBarTitleDisplayMode(.inline)
        } label: {
            Text(label)
                .font(.system(size: 18))
        }
    }
}

#Preview {
    DashboardCellView(label: Constants.SWIFT_UI_REFERENCES, destinationView: GetStartedWithAppsView())
}
