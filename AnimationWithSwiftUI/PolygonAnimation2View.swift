//
//  PolygonAnimation2View.swift
//  AnimationWithSwiftUI
//
//  Created by Алишер Маликов on 29.01.2023.
//

import SwiftUI

struct PolygonAnimation2View: View {
    
    @State private var sides: Int = 4
    @State private var start = false
    
    var body: some View {
        VStack {
            Polygon2Shape(sides: sides)
                .stroke(Color.blue, lineWidth: 3)
                .animation(.easeInOut(duration: 1), value: start)
                .layoutPriority(1)
            
            Text("\(Int(sides)) sides").font(.headline)
            
            HStack {
                ButtonView(label: "1") {
                    sides = 1
                    start.toggle()
                }
                
                ButtonView(label: "3") {
                    sides = 3
                    start.toggle()
                }
                
                ButtonView(label: "7") {
                    sides = 7
                    start.toggle()
                }
                
                ButtonView(label: "30") {
                    sides = 30
                    start.toggle()
                }
            }
        }
    }
}

struct PolygonAnimation2View_Previews: PreviewProvider {
    static var previews: some View {
        PolygonAnimation2View()
    }
}
