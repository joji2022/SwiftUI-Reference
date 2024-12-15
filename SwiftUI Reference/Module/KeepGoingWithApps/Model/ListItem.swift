//
//  ListItem.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 10/12/24.
//

import Foundation

struct ListItem: Identifiable {
    let id = UUID()
    let title: String
    let content: [Content]
    
    static let listItems: [ListItem] = [
        ListItem(title: "1: List Item", content: contents),
        ListItem(title: "2: List Item", content: contents),
        ListItem(title: "3: List Item", content: contents),
        ListItem(title: "4: List Item", content: contents),
        ListItem(title: "5: List Item", content: contents)
    ]
    
    static let contents: [Content] = [
        Content(title: "1: Content", description: "1: Description"),
        Content(title: "2: Content", description: "2: Description"),
        Content(title: "3: Content", description: "3: Description"),
        Content(title: "4: Content", description: "4: Description"),
        Content(title: "5: Content", description: "5: Description")
    ]
}

struct Content: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let description: String
}
