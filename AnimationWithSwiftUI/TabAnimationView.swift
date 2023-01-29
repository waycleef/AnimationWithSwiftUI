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
