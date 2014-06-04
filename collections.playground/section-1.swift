// Playground - noun: a place where people can play

import Cocoa

let dict = ["foo": "lish", "bar":"none"]
dict.keys

var mdict = dict
mdict["bar"] = "beque"
mdict

for(pair) in dict{
    println(pair)
}


for(_,val) in dict{
    println(val)
}

let foo = "foo"
foo.startIndex
foo.substringFromIndex(0).substringToIndex(1)
//foo.substringWithRange(foo.startIndex..foo.startIndex+1)
//)


let range = (0..10)
//let rrange = range.by(-1)

for i in rrange {
    println("\(i)")
}

// very bad.
//for i in 0..(-10) {
//    println("\(i)")
//}
