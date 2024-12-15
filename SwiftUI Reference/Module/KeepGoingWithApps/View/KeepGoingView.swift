//
//  KeepGoingWithAppsView.swift
//  SwiftUI Reference
//
//  Created by JOJI SAMUEL on 07/12/24.
//

import SwiftUI

struct KeepGoingView: View {
    
    @State var isChargerConnected = false
    @State var color: Color = .white
    @State var sliderValue: Double = 0.0
    @State var notes: String = ""
    @State var value: Int = 0
    
    var body: some View {
        
        ZStack {
            Color(cgColor: #colorLiteral(red: 0.8509951027, green: 0.8860542942, blue: 0.9742974356, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                HStack {
                    Text("Built in views that accepts binding values.")
                        .font(.title2)
                        .underline()
                    Spacer()
                }
                .padding(.top, 20)
                Toggle("Connect charger", isOn: $isChargerConnected)
                Image(systemName: isChargerConnected ? "battery.100percent.bolt" : "battery.100percent")
                    .font(.system(size: 100))
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(isChargerConnected ? .green : .white, .white)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                HStack {
                    Image(systemName: "apps.iphone")
                        .font(.system(size: 100))
                        .foregroundStyle(color)
                    Spacer()
                    ColorPicker("Choose color", selection: $color)
                        .frame(width: 150)
                }
                Slider(value: $sliderValue)
                Rectangle()
                    .foregroundStyle(color)
                    .frame(width: sliderValue * 100, height: 100)
                Text(notes)
                TextField("Add notes", text: $notes)
                HStack {
                    Text("Custom views that accepts binding values.")
                        .font(.title2)
                        .underline()
                    Spacer()
                }
                HStack {
                    CustomBindingView(value: $value)
                    Text("\(value)")
                        .font(.system(size: 50))
                        .lineLimit(1)
                        .frame(minWidth: 40, maxWidth: 60)
                }
                

            }
            .padding(.horizontal, 20)
            
        }
        
    }
}

#Preview {
    KeepGoingView()
}
