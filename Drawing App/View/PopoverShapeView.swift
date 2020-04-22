//
//  PopoverShapeView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

/**
 - Parameters:
    - imageName: A string that holds the name of the image used to represent the shape.
    - optionName: A string that holds the name of the shape that will be shown as an option.
    - showNamePopover: A boolean to track whether the shape popover is currently being shown.
    - placedShapes: An array of Shapes that have been placed on the artboard. This is bound to the array in ContentView.
 */

import SwiftUI

struct PopoverShapeView: View {
    var imageName: String
    var optionName: String
    @State private var showNamePopover = false
    @Binding var placedShapes: [Shape]
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 50)
            Text(optionName)
        }.onTapGesture {
                self.showNamePopover = true
        }.popover(
            isPresented: self.$showNamePopover,
            arrowEdge: .leading
        ) {
            PopoverNameView(placedShapes: self.$placedShapes, imageName: self.imageName)
        }
    }
}
