//
//  ColorPreview.swift
//  ColorChanger
//
//  Created by  NovA on 17.12.23.
//

import SwiftUI

struct ColorPreview: View {
    let red: Double
    let green: Double
    let blue: Double

    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(Color(red: red, green: green, blue: blue))
            .shadow(radius: 15)
            .frame(width: 200, height: 200)
            .padding()
            
    }
}
