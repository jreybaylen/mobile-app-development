//
//  Background.swift
//  WeatherSwiftUIApp
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var nightColor: Array<Color> = [.black, .gray]
    var morningColor: Array<Color> = [.blue, .white]
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: isNight ? nightColor : morningColor),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}
