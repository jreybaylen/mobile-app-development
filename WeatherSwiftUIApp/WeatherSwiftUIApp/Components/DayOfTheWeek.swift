//
//  DayOfTheWeek.swift
//  WeatherSwiftUIApp
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct DayOfTheWeekView: View {
    
    var day: String
    var temperature: Int
    var imageName: String
    var frameWidth: CGFloat = 40
    var frameHeight: CGFloat = 40
    var dayFontSize: CGFloat = 18
    var temperatureFontSize: CGFloat = 30

    var body: some View {
        VStack {
            Text(day)
                .foregroundColor(.white)
                .font(.system(size: dayFontSize, weight: .medium, design: .default))
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: frameWidth, height: frameHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: temperatureFontSize, weight: .medium, design: .default))
        }
    }
}
