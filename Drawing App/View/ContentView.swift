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
        HStack(alignment: .top) {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.orange)
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 60)
                    Text("Add\nShape")
                        .foregroundColor(Color.white)
                }
            }
            .padding(.leading, 8)
            .frame(width: 75)
            ZStack {
                Rectangle()
                    .fill(Color.black)
                Text("Artboard")
                    .foregroundColor(Color.white)
            }
            List {
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
