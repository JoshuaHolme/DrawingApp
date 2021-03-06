//
//  PopoverNameView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//
/**
- Parameters:
    - placedShapes: An array of Shapes that have been placed on the artboard. This is bound to the array in ContentView.
    - imageName: A string used to house the name of the image that will be used for the shape. This is used to choose which shape path to use.
    - shapeName: A string used to house the custom name that the user enters for the shape. If the user leaves this blank, this will default to "Shape i" where i is the nuber shape that it will be.
 */
import SwiftUI

struct PopoverNameView: View {
    @Binding var placedShapes: [Shape]
    @State var imageName: String
    @State private var shapeName: String = ""
    
    var body: some View {
        VStack {
            Text("What would you like to name your shape?")
            TextField("Shape \(placedShapes.count + 1)",text: self.$shapeName).textFieldStyle(RoundedBorderTextFieldStyle())
            ZStack {
                Rectangle()
                    .frame(width: 100, height: 50)
                    .cornerRadius(15)
                    .foregroundColor(Color.orange)
                Text("Done")
                    .foregroundColor(Color.white)
                    .onTapGesture {
                        self.addShape(shape: self.imageName, name: self.shapeName)
                        self.shapeName = ""
                }
            }
        }
        .padding(.all)
    }
    
    private func addShape(shape: String, name: String) {
        
        var path: Path
        var layerName: String
        
        if name == "" {
            layerName = "Shape \(placedShapes.count + 1)"
        }
        else {
            layerName = name
        }
        
        switch shape {
        case "Triangle":
            path = Path.triangle
        case "Square":
            path = Path.square
        case "Circle":
            path = Path.circle
        default:
            path = Path.triangle
        }
        
        placedShapes.append(Shape(id: placedShapes.count, name: layerName, previewImageName: shape, path: path, isHidden: false))
    }
}
