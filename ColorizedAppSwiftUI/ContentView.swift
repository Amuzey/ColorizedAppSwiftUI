//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255).rounded()
    @State private var green = Double.random(in: 0...255).rounded()
    @State private var blue = Double.random(in: 0...255).rounded()
    
    @FocusState var isInputActive: Bool
    
    var body: some View {
        ZStack {
            Color(red: 61 / 255, green: 105 / 255, blue: 183 / 255)
                .ignoresSafeArea()
                .onTapGesture {
                    isInputActive = false
                }
            
            VStack(spacing: 40){
                ColorView(red: red, green: green, blue: blue)
                
                VStack {
                    SliderColorView(value: $red, color: .red)
                    SliderColorView(value: $green, color: .green)
                    SliderColorView(value: $blue, color: .blue)
                }
                .frame(height: 150)
                .focused($isInputActive)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") {
                            isInputActive = false
                        }
                    }
                }
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
