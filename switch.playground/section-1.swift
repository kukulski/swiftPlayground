// Playground - noun: a place where people can play

import Cocoa


let point = (-10,10)
switch(point) {
case (0,0):
    println("at origin")
case (let x, 0):
    println("on x with x == \(x)")
case (0, let y):
    println("on Y with Y == \(y)")
case let (x,y) where x == y:
    println("upward diagonal \(x),\(y)")
case let (x,y) where x == -y:
    println("downward diagonal \(x),\(y)")


case let (x,y):
    println("at \(x),\(y)")
}