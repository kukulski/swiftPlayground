// Playground - noun: a place where people can play

import Cocoa

func dtest(hate s:String = "wool") {
    println(s)
}

dtest()
dtest(hate:"fish")
//dtest("twine")

var (a,b) = (10,9)

a
b

// lua swap!
(a,b) = (b,a)
a
b


typealias mathFunction = (Int, Int) -> Int

func printMathResult(fn: mathFunction, a:Int, b:Int) {
    println("result: \(fn(a,b))")
    
}

func add(a:Int, b:Int)->Int { return a+b}

var addp = add

var mulp = {(a:Int, b:Int)->Int in
    return a*b}

printMathResult(addp, 2,3)

printMathResult(mulp, 2,3)
printMathResult({(a:Int, b:Int)->Int in
    return a*b}, 2,3)

//printMathResult(func(a,b) { return a*b}, 2,3)

let arr = ["foo", "bar", "baz", "meh", "Jesus"]
let backwards = {(a:String, b:String) -> Bool in return a > b }
let forwards = {(a:String, b:String) -> Bool in return !backwards(a,b) }
func lower(a:String, b:String)->Bool {
    return a.lowercaseString < b.lowercaseString }


"Foo".lowercaseString


sort(arr,forwards)
sort(arr,lower)
sort(arr,<)
sort(arr,>)

var t2 = sort(arr,backwards)

//var tested = sort(arr,{a:String,b:String in return a.lowercaseString() > b.lowercaseString()})
//tested
