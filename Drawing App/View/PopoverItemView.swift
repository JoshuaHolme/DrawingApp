//
//  PopoverItemView.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import SwiftUI

struct PopoverItemView: View {
    var imageName: String
    var optionName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 50)
            Text(optionName)
        }
    }
}

struct PopoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverItemView(imageName: "triangle", optionName: "Triangle")
    }
}
