//
//  ShapeLayerItemView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct ShapeLayerItemView: View {
    var body: some View {
        HStack {
            Rectangle()
                .fill(Color.yellow)
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 50)
            Spacer()
            Text("Shape Name")
            Spacer()
            Rectangle()
                .fill(Color.green)
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 50)
        }
    }
}

struct ShapeLayerItemView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeLayerItemView()
    }
}
