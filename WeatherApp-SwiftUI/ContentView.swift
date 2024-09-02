//
//  ContentView.swift
//  WeatherApp-SwiftUI
//
//  Created by Stein on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            // first layer
            BackgroundView(isNight: isNight)
            // second layer
            VStack {
                // order of the modifier matters
                CityTextView(cityName: "Cupertino, CA")
                
                WeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                  temperature: 76)
                
                HStack(spacing: 20) {
                    
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                    
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                    print("isNight: \(isNight)")
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                }
                
                Spacer() /// in one view, Xcode will let you only put 10 views. After that, Xcode
            }
        }
        .onAppear {
            // can put uikit code here
        }
    }
}

#Preview {
    ContentView()
}
