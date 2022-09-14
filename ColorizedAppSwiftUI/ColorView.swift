//
//  ColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Алексей on 14.09.2022.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        Color(red: red / 255,
              green: green / 255,
              blue: blue / 255)
        .frame(width: 350, height: 150)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: .constant(0.5), green: .constant(0.5), blue: .constant(0.5))
    }
}
