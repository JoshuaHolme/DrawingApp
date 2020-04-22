//
//  TestMainView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct TestMainView: View {
    var placedShapes: [Shape]
    
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
            List(placedShapes) { item in
                ShapeLayerItemView(shape: item)
            }
            .frame(width: 300)
        }
    }
}

struct TestMainView_Previews: PreviewProvider {
    static var testShapes: [Shape] = [Shape(id: 1, name: "Shape 1", previewImageName: "unselectedGlyph"), Shape(id: 2, name: "Shape 2", previewImageName: "unselectedGlyph"), Shape(id: 3, name: "Shape 3", previewImageName: "unselectedGlyph")]
    
    static var previews: some View {
        TestMainView(placedShapes: testShapes)
    }
}
