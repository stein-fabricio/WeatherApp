//
//  WeatherDayView.swift
//  WeatherApp-SwiftUI
//
//  Created by Stein on 02/09/24.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
            ///iOS 15:
                .symbolRenderingMode(.palette)
                .resizable() // stretches
//                  original: .multicolor)
//                .renderingMode(.original)
//                .foregroundColor(.red)
            ///iOS 15:
                .foregroundStyle(.white, .orange, .red)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)º")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

#Preview {
    WeatherDayView(dayOfWeek: "TUE", imageName: "sun.cloud.fill", temperature: 37)
        .background(Color.black)
}
