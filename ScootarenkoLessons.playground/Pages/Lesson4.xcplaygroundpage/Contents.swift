//: [Previous](@previous)

import Foundation

//task 1

let strValue1 = "123123"
let strValue2 = "12ad3123"
let strValue3 = "123sd123"
let strValue4 = "123a123"
let strValue5 = "123123"

//cool techniqe
//First way

var sum = 0

sum +=  Int(strValue1) ?? 0
sum +=  Int(strValue2) ?? 0
sum +=  Int(strValue3) ?? 0
sum +=  Int(strValue4) ?? 0
sum +=  Int(strValue5) ?? 0

//Second way
sum = 0
if let intValue = Int(strValue1) {
   sum += intValue
}
if let intValue = Int(strValue2) {
   sum += intValue
}
if let intValue = Int(strValue3) {
   sum += intValue
}
if let intValue = Int(strValue4) {
   sum += intValue
}
if let intValue = Int(strValue5) {
   sum += intValue
}

//Third way
sum = 0
if Int(strValue1) != nil {
    sum += Int(strValue1)!
}
if Int(strValue2) != nil {
    sum += Int(strValue2)!
}
if Int(strValue3) != nil {
    sum += Int(strValue3)!
}
if Int(strValue4) != nil {
    sum += Int(strValue4)!
}
if Int(strValue5) != nil {
    sum += Int(strValue5)!
}


//task 2
typealias incomingTuple = (statusCode: Int, message: String?, errorMessage: String?)

var tuple: incomingTuple = (statusCode: 230, message: "adqe", errorMessage: "asdasd")

if 200..<300 ~= tuple.statusCode  {
    print("Message: \(tuple.message ?? "nil value")")
} else {
    print("Error: \(tuple.errorMessage ?? "nil value")")
}
//task 2.1
//create tuple which have two fields of optional String
//if one nil second not nil
typealias biTuple = (message: String?, errorMessage: String?)
var anotherTuple: biTuple = (message: "message", errorMessage: nil)
if anotherTuple.message == nil {
    print(anotherTuple.errorMessage!)
} else {
    print(anotherTuple.message!)
}


//task 3
typealias studentTuple = (name: String?, car: String?, mark: Int?)

var student1: studentTuple = (name: nil, car: nil, mark: nil)
var student2: studentTuple = (name: nil, car: nil, mark: nil)
var student3: studentTuple = (name: nil, car: nil, mark: nil)
var student4: studentTuple = (name: nil, car: nil, mark: nil)
var student5: studentTuple = (name: nil, car: nil, mark: nil)
 
student1.name = "Alex"
student2.name = "Eugen"
student3.name = "Dmitriy"
student4.name = "Valentine"
student5.name = "Stepan"

student1.car = "Honda"
student3.car = "Renault"
student5.car = "Toyota"

student1.mark = 3
student2.mark = 4
student3.mark = 5
student4.mark = 5

print("Student \(student1.name ?? "" ) " +
      "\(student1.car != nil ? ", car: \(student1.car!)" : "has no car"), " +
      "\(student1.mark != nil ? "has mark \(student1.mark!)" : "wasn't on exam")")

print("Student \(student2.name ?? "" ) " +
      "\(student2.car != nil ? ", car: \(student2.car!)" : "has no car"), " +
      "\(student2.mark != nil ? "has mark \(student2.mark!)" : "wasn't on exam")")

print("Student \(student3.name ?? "" ) " +
      "\(student3.car != nil ? ", car: \(student3.car!)" : "has no car"), " +
      "\(student3.mark != nil ? "has mark \(student3.mark!)" : "wasn't on exam")")

print("Student \(student4.name ?? "" ) " +
      "\(student4.car != nil ? ", car: \(student4.car!)" : "has no car"), " +
      "\(student4.mark != nil ? "has mark \(student4.mark!)" : "wasn't on exam")")

print("Student \(student5.name ?? "" ) " +
      "\(student5.car != nil ? ", car: \(student5.car!)" : "has no car"), " +
      "\(student5.mark != nil ? "has mark \(student5.mark!)" : "wasn't on exam")")

//: [Next](@next)
