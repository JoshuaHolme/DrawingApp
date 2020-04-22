//
//  Shape.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import Foundation
import SwiftUI

struct Shape: Identifiable {
    var id: Int
    var name: String
    var previewImageName: String
    var path: Path
    var isHidden: Bool
}
