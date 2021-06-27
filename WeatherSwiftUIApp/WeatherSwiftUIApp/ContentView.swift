//
//  ContentView.swift
//  WeatherSwiftUIApp
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            
            VStack {
                Text("Manila, PH")
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .padding(.vertical, 60)
                
                VStack {
                    DayOfTheWeekView(day: "MON",
                                     temperature: 30,
                                     imageName: "cloud.sun.fill",
                                     frameWidth: 180,
                                     frameHeight: 180,
                                     dayFontSize: 18,
                                     temperatureFontSize: 50)
                        .padding(.bottom, 40)
                }
                
                HStack(spacing: 20) {
                    DayOfTheWeekView(day: "MON",
                                     temperature: 30,
                                     imageName: "cloud.sun.fill")
                    
                    DayOfTheWeekView(day: "TUE",
                                     temperature: 18,
                                     imageName: "wind")
                    
                    DayOfTheWeekView(day: "WED",
                                     temperature: 25,
                                     imageName: "cloud.sun.rain.fill")
                    
                    DayOfTheWeekView(day: "THU",
                                     temperature: 40,
                                     imageName: "sun.max.fill")
                    
                    DayOfTheWeekView(day: "FRI",
                                     temperature: 20,
                                     imageName: "cloud.fill")
                }
                
                Spacer()
                
                ThemeButton(isNight: $isNight)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
