// Playground - noun: a place where people can play

import Cocoa

func commonElements <T, U
    where
    T: Sequence,
    U: Sequence,
    T.GeneratorType.Element: Equatable,
    T.GeneratorType.Element == U.GeneratorType.Element
> (lhs: T, rhs: U) -> Array<T.GeneratorType.Element> {
 
        var result = Array<T.GeneratorType.Element>()
        
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                result += lhsItem
            }
        }
    }
    return result
}
commonElements([1, 3, 5], [3,2]).count


let foo = (1,2)
let (_,bar) = foo
bar
foo.0

let me = foo

