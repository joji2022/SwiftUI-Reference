//
//  KeepGoingWithAppsDashboard.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 10/12/24.
//

import SwiftUI

struct KeepGoingDashboard: View {
    
    @EnvironmentObject var appState: AppState
    let viewModel = KeepGoingViewModel()
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.dashboardItems) { item in
                    switch item.destinationType {
                    case .binding:
                        ZStack {
                            NavigationLink {
                                BindingView()
                                    .navigationTitle(item.label)
                            } label: {
                                EmptyView()
                            }
                            HStack {
                                Text(item.label)
                                Spacer()
                                Image(systemName: "chevron.forward")
                            }
                        }

                    case .navigation:
                        Button {
                            appState.rootView = .learnNavigation
                        } label: {
                            HStack {
                                Text(item.label)
                                Spacer()
                                Image(systemName: "chevron.forward")
                            }
                            .foregroundStyle(.black)
                            
                        }
                    case .keepGoingWithApps:
                        ZStack {
                            NavigationLink {
                                KeepGoingView()
                                    .navigationTitle(item.label)
                            } label: {
                                EmptyView()
                            }
                            HStack {
                                Text(item.label)
                                Spacer()
                                Image(systemName: "chevron.forward")
                            }
                        }

                    default:
                        EmptyView()
                    }

                }
            }
            .contentMargins(.top, 15)
        }
    }
}

#Preview {
    KeepGoingDashboard()
}
