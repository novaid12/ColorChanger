//
//  SwitchColor.swift
//  ColorChanger
//
//  Created by  NovA on 17.12.23.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var sliderValue: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(color)
            Slider(value: $sliderValue, in: 0 ... 255, step: 1)
                .background(color)
                .cornerRadius(40)
            Text(verbatim: $sliderValue.wrappedValue.description)
                .frame(width: 50)
                .foregroundColor(color)
        }.padding(.horizontal)
    }
}
