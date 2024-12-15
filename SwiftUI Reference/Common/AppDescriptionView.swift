//
//  AppDescriptionView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 06/12/24.
//

import SwiftUI

struct AppDescriptionView: View {
    
    let dashboardItem: DashboardCellModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    HStack {
                        Text("Contents")
                            .font(.title)
                            .underline(true, color: Color.gray)
                        Spacer()
                    }
                    HStack {
                        Text(dashboardItem.description)
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)
                
            }
            
            NavigationLink {
                
                switch dashboardItem.destinationType {
                case .getStartedWithApps:
                    GetStartedWithAppsView()
                        .navigationTitle(dashboardItem.label)
                case .keepGoingWithApps:
                    KeepGoingDashboard()
                        .navigationTitle(dashboardItem.label)
                default:
                    EmptyView()
                }
            } label: {
                Text("Go to App")
                    .font(.system(size: 18))
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .background(Rectangle().foregroundColor(Color.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    )
            }
            
        }
        
    }
}

#Preview {
    AppDescriptionView(dashboardItem: DashboardCellModel(label: Constants.GET_STARTED_WITH_APPS, destinationType: .getStartedWithApps, description: AppDescriptions.GET_STARTED_WITH_APPS))
}
