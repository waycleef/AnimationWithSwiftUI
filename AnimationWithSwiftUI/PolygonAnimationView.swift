//
//  ContentView.swift
//  AnimationWithSwiftUI
//
//  Created by Алишер Маликов on 29.01.2023.
//

import SwiftUI

struct PolygonAnimationView: View {
    
    @State private var sides: Double = 4
    @State private var start = false
    
    var body: some View {
        VStack {
            PolygonShape(sides: sides)
                .stroke(Color.blue, lineWidth: 3)
                .animation(.easeInOut(duration: 1), value: start)
                .layoutPriority(1)
            
            Text("\(Int(sides)) sides").font(.headline)
            
            HStack {
                ButtonView(label: "1") {
                    sides = 1.0
                    start.toggle()
                }
                
                ButtonView(label: "3") {
                    sides = 3.0
                    start.toggle()
                }
                
                ButtonView(label: "7") {
                    sides = 7.0
                    start.toggle()
                }
                
                ButtonView(label: "30") {
                    sides = 30.0
                    start.toggle()
                }
            }
        }
    }
}

struct PolygonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        PolygonAnimationView()
    }
}
