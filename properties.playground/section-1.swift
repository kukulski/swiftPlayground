// Playground - noun: a place where people can play

import Cocoa

struct Consty {
    let val: Int
    init(_ v:Int) { val = v}
    init(val:Int) { self.val = val}
}

let thing = Consty(val: 3)
//thing.val = 4
thing.val

let another = Consty(4)

struct Vary {
    var val: Int
}

var vary = Vary(val:3)
vary.val = 4

let nowConsty = Vary(val: 3)
//nowConsty.val = 4


operator infix ^|^ {associativity left precedence 140}

operator postfix %/ {}



struct Point {
    static let SWRT2 = sqrt(2)
    var x:Double, y:Double
    var len:Double { return sqrt(x*x+y*y)}
    var normalized:Point { return Point(x/len, y/len)}
   
    
    init(_ x:Double, _ y:Double) { self.x = x; self.y = y}
    
    init( x:Double,  y:Double) { self.init(x,y)}
    
    
    init (theta:Double, r:Double) {
        self.init(r*cos(theta), r*sin(theta))
    }

    
 
    
 }

@postfix func %/ (vector: Point) -> Point {
    return Point(x: -vector.x, y: -vector.y)
}


//^4

//3^

func ^ (left:Double, right:Double) -> Double {
    return pow(left,right)
}

3^4

3.0 ^ 0.5

2.0^3



func ^|^ (left:Point, right:Point) -> Point {
    return Point(left.x, right.y)
}


let foo = Point(theta:3.14, r:1)

foo


let hypPoint = Point(x:4,y:3)
hypPoint.len
hypPoint.normalized

hypPoint%/
    

foo ^|^ hypPoint

