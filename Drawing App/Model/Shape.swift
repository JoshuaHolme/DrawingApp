//
//  Shape.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

/**

 A struct used to create a shape object
 - Parameters:
    - id: Used to show the shape in a list, as well as keep track of it outside of its array.
    - name: A string used to hold the name of the shape. This is customizable by the user.
    - previewImageName: This holds the name of the image that will be used in the layer browser on the right side of the screen.
    - path: Holds the bezier path of the image.
    - isHidden: A boolean to track if the image is hidden.
 */

import Foundation
import SwiftUI

struct Shape: Identifiable {
    var id: Int
    var name: String
    var previewImageName: String
    var path: Path
    var isHidden: Bool
}
