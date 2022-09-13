//
//  SliderColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Алексей on 12.09.2022.
//

import SwiftUI

struct SliderColorView: View {
    
    @Binding var value: Double
    @Binding var text: String
    
    
    let color: Color
    
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .foregroundColor(.white)
                .frame(width: 40, height: 35)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(color)
            TextField("", text: $text)
                .frame(width: 55)
                .textFieldStyle(.roundedBorder)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Click ME") { }
                    }
                }
        }
    }
}

struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView(value: .constant(0.5), text: .constant(""), color: .red)
    }
}
