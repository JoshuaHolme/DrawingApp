//
//  PathExtension.swift
//  Drawing App
//
//  Created by Joshua Holme on 4/22/20.
//  Copyright © 2020 Joshua Holme. All rights reserved.
//

import Foundation
import SwiftUI

extension Path {
    
    static var square: Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 250, y: 50))
        path.addLine(to: CGPoint(x: 250, y: 250))
        path.addLine(to: CGPoint(x: 50, y: 250))
        path.addLine(to: CGPoint(x: 50, y: 50))
        
        return path
    }
    
    static var circle: Path {
        var path = Path()
        
        path.move(to: CGPoint(x: 50, y: 400))
        path.addQuadCurve(to: CGPoint(x: 150, y: 300), control: CGPoint(x: 50, y: 300))
        path.addQuadCurve(to: CGPoint(x: 250, y: 400), control: CGPoint(x: 250, y: 300))
        path.addQuadCurve(to: CGPoint(x: 150, y: 500), control: CGPoint(x: 250, y: 500))
        path.addQuadCurve(to: CGPoint(x: 50, y: 400), control: CGPoint(x: 50, y: 500))
        
        return path
    }
    
    static var triangle: Path {
        var path = Path()
        
        path.move(to: CGPoint(x:50, y: 250))
        path.addLine(to: CGPoint(x: 250, y: 250))
        path.addLine(to: CGPoint(x: 150, y: 50))
        path.addLine(to: CGPoint(x: 50, y: 250))
        
        return path
    }
}
