//
//  TabAnimationView.swift
//  AnimationWithSwiftUI
//
//  Created by Алишер Маликов on 29.01.2023.
//

import SwiftUI

struct TabAnimationView: View {
    var body: some View {
        TabView {
            PolygonAnimationView()
                .tabItem {
                    Label("Animation", systemImage: "1.lane")
                }
                .animation(.easeIn, value: 2)
            PolygonAnimation2View()
                .tabItem {
                    Label("Animation", systemImage: "2.lane")
                }
            PolygonAnimation3View()
                .tabItem {
                    Label("Animation", systemImage: "3.lane")
                }
            PolygonAnimation4View()
                .tabItem {
                    Label("Animation", systemImage: "4.lane")
                }

        }
    }
}

struct TabAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        TabAnimationView()
    }
}
