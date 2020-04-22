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
        TestMainView(placedShapes: [Shape(id: 1, name: "Shape 1", previewImageName: "triangle", isHidden: false), Shape(id: 2, name: "Shape 2", previewImageName: "triangle", isHidden: false), Shape(id: 3, name: "Shape 3", previewImageName: "triangle", isHidden: false)])
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
