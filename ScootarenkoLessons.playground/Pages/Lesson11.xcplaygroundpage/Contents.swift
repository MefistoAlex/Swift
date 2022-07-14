//: [Previous](@previous)

import Foundation

func closureFunc (closure: () -> ()) {
    for index in 1...10 {
        print(index)
    }
    closure()
}
let testClosure  =  {
    
        print("Hi from closure")
    
}
closureFunc () {testClosure()}


// task 2
func arrayValueSearch(array: [Int], closure: (Int, Int?) -> Bool) -> Int {
    var searchedValue: Int? = nil
    for elem in array {
        if closure (elem , searchedValue) {
            searchedValue = elem
        }
    }
    return searchedValue ?? 0
}

var array  = [12, 445,67,675,5,33,6789,234]
let min = arrayValueSearch(array: array) {
    if $1 == nil {
        return true
    } else if $0 < $1! {
        return true
    } else {
        return false
    }
}
let max = arrayValueSearch(array: array) {
    if $1 == nil {
        return true
    } else if $0 > $1! {
        return true
    } else {
        return false
    }
}

//task 4
let inputString = "But you see, said Roark quietly"
var a : Character = "a"
var b : Character = "b"
var sortedstring = inputString.sorted{$0 > $1}
for char in sortedstring {
    print(char)
}
    
 
