//
//  PolygonAnimation4View.swift
//  AnimationWithSwiftUI
//
//  Created by Алишер Маликов on 29.01.2023.
//

import SwiftUI

struct PolygonAnimation4View: View {
    @State private var sides: Double = 7
    @State private var scale: Double = 1.0
    
    @State private var start = false
    
    var body: some View {
        VStack {
            Polygon4Shape(sides: sides, scale: scale)
                .stroke(Color.pink, lineWidth: (sides < 3) ? 10 : ( sides < 7 ? 5 : 2))
                .padding(20)
                .animation(.easeInOut(duration: 3), value: start)
                .layoutPriority(1)
            
            
            Text("\(Int(sides)) sides, \(String(format: "%.2f", scale as Double)) scale")
            
            Slider(value: $sides, in: 0...30)
            
            HStack(spacing: 20) {
                ButtonView(label: "1") {
                    self.sides = 1.0
                    self.scale = 1.0
                    start.toggle()
                }
                
                ButtonView(label: "3") {
                    self.sides = 3.0
                    self.scale = 1.0
                    start.toggle()
                }
                
                ButtonView(label: "7") {
                    self.sides = 7.0
                    self.scale = 1.0
                    start.toggle()
                }
                
                ButtonView(label: "30") {
                    self.sides = 30.0
                    self.scale = 1.0
                    start.toggle()
                }
                
            }
        }.navigationBarTitle("Example 4").padding(.bottom, 50)
    }
}


struct PolygonAnimation4View_Previews: PreviewProvider {
    static var previews: some View {
        PolygonAnimation4View()
    }
}
