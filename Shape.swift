//
//  Shape.swift
//  
//
//  Created by Timothy Kukulski on 6/2/14.
//
//

import Foundation
class Shape {
    var sides = 0
    //  let cornerRatio = 1
    //  init() {}
    func thingy(scale:Double) -> String {
        let v = sides * scale;
        return "thingers to \(v)"
    }
}