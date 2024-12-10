//
//  GetStartedWithAppsView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 03/12/24.
//

import SwiftUI

struct GetStartedWithAppsView: View {
    
    @State var noDataViewIsShown: Bool = false
    
    var body: some View {
        ZStack {
            ScrollView(.vertical) {
                HStack {
                    Image(systemName: "book")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.red)
                    Spacer()
                    Text("Book")
                        .font(.largeTitle)
                }
                HStack {
                    Spacer()
                    Image(systemName: "person.3.sequence")
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.green, .red, .blue)
                }
                .frame(height: 100)
                
                Spacer()
            }
            .padding(.horizontal, 50)
            .background(.clear)
            
            if noDataViewIsShown {
                Text("No data found")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.white)
            }
            
            VStack {
                Spacer()
                Button {
                    noDataViewIsShown.toggle()
                } label: {
                    Text(noDataViewIsShown ? "Hide \"No data view\"" : "Show \"No data view\"")
                        .padding()
                }
            }

        }
    }
}

#Preview {
    GetStartedWithAppsView()
}
