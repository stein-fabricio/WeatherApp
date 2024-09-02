//
//  BackgroundView.swift
//  WeatherApp-SwiftUI
//
//  Created by Stein on 02/09/24.
//

import SwiftUI

struct BackgroundView: View {
    
    var isNight: Bool
//    var topColor: Color
//    var bottomColor: Color
    var body: some View {
        /* customizable any iOS:
        LinearGradient(colors: [isNight ? .black : .blue,
                                isNight ? .gray : Color("lightBlue")],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
         */
        /// iOS 16:
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(isNight: true)
}
