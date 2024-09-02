//
//  WeatherStatusView.swift
//  WeatherApp-SwiftUI
//
//  Created by Stein on 02/09/24.
//

import SwiftUI
import Foundation

struct WeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable() // stretches
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)º")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 35)
    }
}

#Preview {
    WeatherStatusView(imageName: "sun.fill", temperature: 37)
        .background(Color.gray)
}
