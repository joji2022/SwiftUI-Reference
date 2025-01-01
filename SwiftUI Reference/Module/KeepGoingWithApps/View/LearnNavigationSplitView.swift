//
//  NavigationSplitView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 09/12/24.
//

import SwiftUI

struct LearnNavigationSplitView: View {
    
    let viewModel = KeepGoingViewModel()
    let listItems: [ListItem] = ListItem.listItems
    @State var listItemId: ListItem.ID?
    @State var contentId: ListItem.Content.ID?
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationSplitView {
            List(listItems, selection: $listItemId) { item in
                Text(item.title)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        appState.rootView = .dashboard
                    }) {
                        Image(systemName: "power")
                            .resizable()
                            .font(.system(size: 14))
                            .foregroundStyle(.red)
                    }
                }
            }
        } content: {
            if let item = listItems.first(where: { $0.id == listItemId }) {
                List(item.content, selection: $contentId) { item in
                    Text(item.title)
                }
            }
        } detail: {
            if let content = listItems.first(where: { $0.id == listItemId })?.content.first(where: { $0.id == contentId }) {
                Text(content.description)
            }
        }


    }
}

#Preview {
    LearnNavigationSplitView()
}
