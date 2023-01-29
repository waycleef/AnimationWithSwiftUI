//
//  Polygon2View.swift
//  AnimationWithSwiftUI
//
//  Created by Алишер Маликов on 29.01.2023.
//

import SwiftUI

struct Polygon2Shape: Shape {
    var sides: Int
    private var sidesAsDouble: Double
    
    var animatableData: Double {
            get { return sidesAsDouble }
            set { sidesAsDouble = newValue }
        }
    
    init(sides: Int) {
        self.sides = sides
        self.sidesAsDouble = Double(sides)
    }
    
    func path(in rect: CGRect) -> Path {
        // hypotenuse
        let h = Double(min(rect.size.width, rect.size.height)) / 2.0
        
        // center
        let c = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
        
        var path = Path()
        
        let extra: Int = Double(sides) != Double(Int(sides)) ? 1 : 0
                
        for i in 0..<Int(sides) + extra {
            let angle = (Double(i) * (360.0 / Double(sides))) * Double.pi / 180

            // Calculate vertex position
            let pt = CGPoint(x: c.x + CGFloat(cos(angle) * h), y: c.y + CGFloat(sin(angle) * h))
            
            if i == 0 {
                path.move(to: pt) // move to first vertex
            } else {
                path.addLine(to: pt) // draw line to next vertex
            }
        }
        
        path.closeSubpath()
        
        return path
    }
}

//struct Polygon2Shape_Previews: PreviewProvider {
//    static var previews: some View {
//        Polygon2View()
//    }
//}
