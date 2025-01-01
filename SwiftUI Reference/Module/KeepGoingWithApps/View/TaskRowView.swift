//
//  TaskRowView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 29/12/24.
//

import SwiftUI

struct TaskRowView: View {
    
    var task: Task
    
    var body: some View {
        HStack {
            Text(task.name)
                .font(.title)
            Spacer()
            Image(systemName: task.emoji)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 100)
                .padding(.all, 10)
                .foregroundStyle(Color.random)
        }
        .frame(maxHeight: 100)
    }
}

#Preview {
    TaskRowView(task: Task(name: "book", emoji: "book"))
}
