//
//  ShapeLayerItemView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct ShapeLayerItemView: View {
    @State var shape: Shape
    @Binding var placedShapes: [Shape]
    @Binding var selectedShapeID: Int
    
    var body: some View {
        HStack {
            Image("\(shape.previewImageName)")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 50)
            Spacer()
            Text("\(shape.name)")
                .foregroundColor(selectedShapeID == shape.id ? Color.orange : Color.black)
                .fontWeight(selectedShapeID == shape.id ? .bold : .regular)
                .onTapGesture {
                    self.toggleSelectedItem()
                }
            Spacer()
            Image(shape.isHidden ? "unselectedGlyph" : "selectedGlyph")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 50)
                .onTapGesture {
                    self.toggleHiddenShape()
            }
        }
    }
    
    private func toggleSelectedItem() {
        self.selectedShapeID = self.shape.id
    }
    
    private func toggleHiddenShape() {
        for i in 0 ... self.placedShapes.count - 1
        {
            if self.placedShapes[i].id == self.shape.id
            {
                if self.placedShapes[i].isHidden {
                    self.placedShapes[i].isHidden = false
                    self.shape.isHidden = false
                }
                else {
                    self.placedShapes[i].isHidden = true
                    self.shape.isHidden = true
                }
            }
        }
    }
}
