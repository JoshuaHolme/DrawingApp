//
//  ContentView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ZStack {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 100)
                Text("Control\nArea")
                    .foregroundColor(Color.white)
            }
            ZStack {
                Rectangle()
                    .fill(Color.black)
                Text("Artboard")
                    .foregroundColor(Color.white)
            }
//            ZStack {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 300)
//                Text("Layer Browser")
//                    .foregroundColor(Color.white)
//            }
            List{
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
                ShapeLayerItemView()
            }
            .frame(width: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
