//
//  PolygonAnimation3View.swift
//  AnimationWithSwiftUI
//
//  Created by Алишер Маликов on 29.01.2023.
//

import SwiftUI

struct PolygonAnimation3View: View {
    @State private var sides: Double = 4
    @State private var duartion: Double = 1.0
    @State private var scale: Double = 1.0
    
    @State private var start = false
    
    var body: some View {
        VStack {
            Polygon3Shape(sides: sides, scale: scale)
                .stroke(Color.blue, lineWidth: 3)
                .animation(.easeInOut(duration: duartion), value: start)
                .layoutPriority(1)
            
            Text("\(Int(sides)) sides").font(.headline)
            
            HStack {
                ButtonView(label: "1") {
                    sides = 1.0
                    scale = 1.0
                    start.toggle()
                }
                
                ButtonView(label: "3") {
                    sides = 3.0
                    scale = 0.7
                    start.toggle()
                }
                
                ButtonView(label: "7") {
                    sides = 7.0
                    scale = 0.4
                    start.toggle()
                }
                
                ButtonView(label: "30") {
                    sides = 30.0
                    scale = 1.0
                    start.toggle()
                }
            }
        }
    }
}

//struct PolygonAnimation3View_Previews: PreviewProvider {
//    static var previews: some View {
//        PolygonAnimation3View()
//    }
//}
