//
//  PopoverShapeView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct PopoverShapeView: View {
    var imageName: String
    var optionName: String
    @State private var showNamePopover = false
    @State var shapeName: String = ""
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
