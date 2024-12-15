//
//  CustomBindingView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 09/12/24.
//

import SwiftUI

struct CustomBindingView: View {
    
    @Binding var value: Int
    
    var body: some View {
        HStack {
            Button {
                value -= 1
            } label: {
                Image(systemName: "minus.square")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFit()
            }
            Text("\(value)")
                .font(.system(size: 50))
                .frame(minWidth: 120)
            Button {
                value += 1
            } label: {
                Image(systemName: "plus.square")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFit()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
        .background(
            Rectangle().fill(Color.gray.opacity(0.6))
                .cornerRadius(20)
        )
        .foregroundStyle(.white)
        .padding(.horizontal, 20)
    }
}

#Preview {
    @Previewable @State var value = 0
    CustomBindingView(value: $value)
}
