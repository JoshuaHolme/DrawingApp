//
//  ContentView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

/**
 
 - Parameters:
    - placedShapes: Array used to hold all shapes that have been placed.
    - selectedShapeID: An integer used to track the currently selected layer. Its default value is -1 as a shape will never have an ID of -1.
    - showShapePopover: A boolean to track whether the shape popover is currently being shown
 */

import SwiftUI

struct ContentView: View {
    @State var placedShapes: [Shape]
    @State var selectedShapeID : Int = -1
    @State private var showShapePopover: Bool = false
    
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                ZStack {
                    Rectangle()
                        .fill(Color.orange)
                        .aspectRatio(1, contentMode: .fit)
                        .frame(width: 60)
                        .cornerRadius(10)
                    Image("addGlyph")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .foregroundColor(Color.white)
                        .frame(width: 40)
                }
                .onTapGesture {
                    self.showShapePopover = true
                }.popover(
                    isPresented: self.$showShapePopover,
                    arrowEdge: .leading
                ) {
                    VStack(alignment: .leading) {
                        PopoverShapeView(imageName: "Triangle", optionName: "Triangle", placedShapes: self.$placedShapes)
                        PopoverShapeView(imageName: "Square", optionName: "Square", placedShapes: self.$placedShapes)
                        PopoverShapeView(imageName: "Circle", optionName: "Circle", placedShapes: self.$placedShapes)
                    }
                    .padding(.all)
                }
            }
            .padding(.leading, 8)
            .frame(width: 75)
            ZStack {
                Rectangle()
                    .fill(Color.init(hue: 0, saturation: 0, brightness: 0.75))
                ForEach(placedShapes) { shape in
                    if shape.isHidden != true {
                        shape.path
                    }
                    
                }
            }
            List(placedShapes) { item in
                ShapeLayerItemView(shape: item, placedShapes: self.$placedShapes, selectedShapeID: self.$selectedShapeID)
            }
            .frame(width: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var testShapes: [Shape] = [Shape(id: 1, name: "Shape 1", previewImageName: "triangle", path: Path.square, isHidden: false), Shape(id: 2, name: "Shape 2", previewImageName: "triangle", path: Path.square, isHidden: false), Shape(id: 3, name: "Shape 3", previewImageName: "triangle", path: Path.square, isHidden: false)]
    
    static var previews: some View {
        ContentView(placedShapes: testShapes)
    }
}
