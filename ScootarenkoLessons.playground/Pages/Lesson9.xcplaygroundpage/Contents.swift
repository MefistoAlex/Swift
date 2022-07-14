//: [Previous](@previous)

import Foundation
import Darwin

let text = "But you see, said Roark quietly"
var vowelsCount = 0
var consonantsCount = 0
var symbolsCount = 0
let ch :Character = "s"
for char in text {
    switch char {
    case let ch where "aeiou".contains(ch): vowelsCount += 1
    case let ch where "bcdfghjklmnpqrstvwxz".contains(ch): consonantsCount += 1
    default: symbolsCount += 1
    }
}
vowelsCount
consonantsCount
symbolsCount


//task 2

let age = 5
switch age {
    case ...16 : print("Childhood")
    case 17...21 : print("Yung")
    case 22...55 : print("Adult")
    case 56...75 : print("Old")
    case 75... : print("Olderman")
    default: print("default")
}

//task 3

let student = (name: "lex", lastname: "asto", surname: "riyovich")

//switch student {
//case let (name.hasPrefix("A"), _, _):
//    
//        print(student.name)
//    case let (_, _, surname) where (surname.hasPrefix("V") || surname.hasPrefix("D ")):
//        print("\(student.name) \(student.surname)")
//    case let (_, lastname, _) where (lastname.hasPrefix("E") || lastname.hasPrefix("Z ")):
//        print("\(student.lastname)")
//    default:
//        print("Student \(student.name) \(student.lastname) \(student.surname)")
//}
//: [Next](@next)
