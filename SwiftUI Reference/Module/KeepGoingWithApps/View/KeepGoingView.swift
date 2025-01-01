//
//  KeepGoingView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 25/12/24.
//

import SwiftUI

struct KeepGoingView: View {
    
    @EnvironmentObject var data: KeepGoingViewModel
    
    var body: some View {
        List {
            Text(NavigationTitles.KEEP_GOING_VIEW)
            Section(Constants.ANIMATE) {
                NavigationLink(Constants.ANIMATE_TASK) {
                    AnimateTaskView()
                        .navigationTitle(Constants.ANIMATING_TASK)
                }
            }
            ForEach(data.tasks) { task in
                NavigationLink(destination: Text(task.name)) {
                    TaskRowView(task: task)
                        .navigationTitle(task.name)
                }
            }
            .onDelete { indexSet in
                data.tasks.remove(atOffsets: indexSet)
            }
        }
    }
}

#Preview {
    KeepGoingView()
        .environmentObject(KeepGoingViewModel())
}
