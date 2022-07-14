//: [Previous](@previous)

import Foundation
// task1
let optionalValue1 : Int? = 3
let optionalValue2 : Int? = nil
let optionalValue3 : Int? = 5
let optionalValue4 : Int? = nil
let optionalValue5 : Int? = 6

var resultString = ""
var sum = 0
if let number = optionalValue1 {
    sum += number
    resultString += "\(number) + "
} else {
    resultString += "nil + "
}
if let number = optionalValue2 {
    sum += number
    resultString += "\(number) + "
} else {
    resultString += "nil + "
}
if let number = optionalValue2 {
    sum += number
    resultString += "\(number) + "
} else {
    resultString += "nil + "
}
if let number = optionalValue3 {
    sum += number
    resultString += "\(number) + "
} else {
    resultString += "nil + "
}
if let number = optionalValue4 {
    sum += number
    resultString += "\(number) + "
} else {
    resultString += "nil + "
}
if let number = optionalValue5 {
    sum += number
    resultString += "\(number) + "
} else {
    resultString += "nil = "
}

resultString += "\(sum)"
print(resultString)

//task 2

let unicharString = "\u{1F436}\u{1F4A9}\u{0301}  is  good var name if Swift \u{2328}"

//task 3
let searchingChar: Character = "a"
var index = 0
for char in "abcdefghijklmnopqrstuvwxyz" {
    if char == searchingChar {
        break
    }
    index += 1;
}
print(index)
//: [Next](@next)
