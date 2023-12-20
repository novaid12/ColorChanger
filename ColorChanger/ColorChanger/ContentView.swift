//
//  ContentView.swift
//  ColorChanger
//
//  Created by  NovA on 17.12.23.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = Double.random(in: 0...255).rounded()
    @State private var greenValue: Double = Double.random(in: 0...255).rounded()
    @State private var blueValue: Double = Double.random(in: 0...255).rounded()
    @State private var backgroundColor: Color = .white

    var body: some View {
        ZStack {
            Color(backgroundColor)
            VStack {
                ColorPreview(red: Double(redValue / 255), green: Double(greenValue / 255), blue: Double(blueValue / 255))

                VStack {
                    ColorSlider(sliderValue: $redValue, color: .red)
                    ColorSlider(sliderValue: $greenValue, color: .green)
                    ColorSlider(sliderValue: $blueValue, color: .blue)
                }
                .padding()

                Button(action: {
                    backgroundColor = Color(red: Double(redValue / 255), green: Double(greenValue / 255), blue: Double(blueValue / 255))
                }) {
                    Text("Изменить фон")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
