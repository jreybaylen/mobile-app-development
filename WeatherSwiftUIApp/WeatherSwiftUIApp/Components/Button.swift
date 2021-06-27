//
//  Button.swift
//  WeatherSwiftUIApp
//
//  Created by John Rey Baylen on 6/27/21.
//

import SwiftUI

struct ThemeButton: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        Button {
            isNight.toggle()
        } label: {
            HStack {
                Image(systemName: isNight ? "moon.stars" : "sun.max.fill")
                    .resizable()
                    .renderingMode(.original)
                    .frame(width: 30, height: 30)
                    .aspectRatio(contentMode: .fit)
                
                Text("\(isNight ? "Light" : "Dark") Theme")
                    .foregroundColor(isNight ? .black : .blue)
                    .font(.system(size: 24, weight: .medium, design: .default))
            }
            .frame(width: 300, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color.white)
            .cornerRadius(10)
        }
    }
}
