//
//  CityTextView.swift
//  WeatherApp-SwiftUI
//
//  Created by Stein on 02/09/24.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding(.all, 40)
    }
}

#Preview {
    CityTextView(cityName: "California")
        .background(Color.black)
}
