//
//  ContentView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var placedShapes: [Shape]
    @State private var selectedId: Int = 0
    @State private var showPopover:Bool = false
    
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
                    self.showPopover = true
                }.popover(
                    isPresented: self.$showPopover,
                    arrowEdge: .leading
                ) {
                    VStack(alignment: .leading) {
                        PopoverItemView(imageName: "Triangle", optionName: "Triangle")
                            .onTapGesture {
                                self.addShape(shape: Shape(id: self.placedShapes.count, name: "Shape \(self.placedShapes.count + 1)", previewImageName: "Triangle", path: Path.triangle, isHidden: false))
                            }
                        PopoverItemView(imageName: "Square", optionName: "Square")
                            .onTapGesture {
                                self.addShape(shape: Shape(id: self.placedShapes.count, name: "Shape \(self.placedShapes.count + 1)", previewImageName: "Square", path: Path.square, isHidden: false))
                            }
                        PopoverItemView(imageName: "Circle", optionName: "Circle")
                        .onTapGesture {
                            self.addShape(shape: Shape(id: self.placedShapes.count, name: "Shape \(self.placedShapes.count + 1)", previewImageName: "Circle", path: Path.circle, isHidden: false))
                        }
                    }
                    .padding(.all)
                }
            }
            .padding(.leading, 8)
            .frame(width: 75)
            ZStack {
                Rectangle()
                    .fill(Color.gray)
                ForEach(placedShapes) { shape in
                    if shape.isHidden != true {
                        shape.path
                    }
                    
                }
            }
            List(placedShapes) { item in
                ShapeLayerItemView(shape: item, placedShapes: self.$placedShapes)
            }
            .frame(width: 300)
        }
    }
    
    private func addShape(shape: Shape) {
        placedShapes.append(shape)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var testShapes: [Shape] = [Shape(id: 1, name: "Shape 1", previewImageName: "triangle", path: Path.square, isHidden: false), Shape(id: 2, name: "Shape 2", previewImageName: "triangle", path: Path.square, isHidden: false), Shape(id: 3, name: "Shape 3", previewImageName: "triangle", path: Path.square, isHidden: false)]
    
    static var previews: some View {
        ContentView(placedShapes: testShapes)
    }
}
