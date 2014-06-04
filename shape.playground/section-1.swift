// Playground - noun: a place where people can play

import Cocoa

class Shape {
    var sides:Int = 0
    //  let cornerRatio = 1
    //  init() {}
    func thingy(scale:Double) -> String {
        let v = Double(sides) * scale;
        return "thingers to \(v)"
    }
}

let f = Shape()
f.sides = 4
f.thingy(1.2)

enum R:Int {
    case A = 1
    case B,C,D
    func names()->String {
        return " ABCD"
    }
    func simpleDescription()->String {
        let n = names()
        let idx = String.Index(self.toRaw())
        let r = Range(start: idx, end: idx+1)
        return n.substringWithRange(r)
    }
}
enum Color:Int {
    case Red, Black
}
enum Suit:Int {
    case Clubs, Hearts, Spades, Diamonds
    func color() -> Color {
        switch self {
        case .Clubs, .Spades:
            return Color.Black
        default:
            return Color.Red
        }
    }
}

let a = R.B
a.toRaw()
a.simpleDescription()

