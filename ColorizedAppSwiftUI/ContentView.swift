//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var color: UIColor = .white
    @State private var value = 0.5
    @State private var textFieldText = "1223"
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @State private var redSliderText = ""
    @State private var greenSliderText = ""
    @State private var blueSliderText = ""

    var body: some View {
        ZStack {
            Color(red: 61 / 255, green: 105 / 255, blue: 183 / 255)
                .ignoresSafeArea()
            VStack {
                Color(red: redSliderValue / 255,
                      green: greenSliderValue / 255,
                      blue: blueSliderValue / 255)
                    .frame(width: 350, height: 150)
                    .cornerRadius(20)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 4))
                SliderColorView(value: $redSliderValue, text: $redSliderText, color: .red)
                SliderColorView(value: $greenSliderValue, text: $greenSliderText, color: .green)
                SliderColorView(value: $blueSliderValue, text: $blueSliderText, color: .blue)
                Spacer()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
