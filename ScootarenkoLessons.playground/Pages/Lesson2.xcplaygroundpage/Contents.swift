//: [Previous](@previous)

import Foundation

//task 1
print("Ineger types \n")

print("\(type(of:Int8())) type  min value : \(Int8.min) , max value : \(Int8.max) ")
print("\(type(of:UInt8())) type  min value : \(UInt8.min) , max value : \(UInt8.max) ")
print("\(type(of:Int16())) type  min value : \(Int16.min) , max value : \(Int16.max) ")
print("\(type(of:UInt16())) type  min value : \(UInt16.min) , max value : \(UInt16.max) ")
print("\(type(of:Int32())) type  min value : \(Int32.min) , max value : \(Int32.max) ")
print("\(type(of:UInt64())) type  min value : \(UInt64.min) , max value : \(UInt64.max) ")
print("\(type(of:Int64())) type  min value : \(Int64.min) , max value : \(Int64.max) ")
print("\(type(of:Int())) type  min value : \(Int.min) , max value : \(Int.max) ")

//task 2
let integerValue = 23
let floatValue : Float = 34.4
let doubleValue = 2.4

let integerSum = integerValue + Int(floatValue) + Int(doubleValue)
let floatSum = Float(integerValue) + floatValue + Float(doubleValue)
let doubleSum = Double(integerValue) + Double(floatValue) + doubleValue

if Double(integerSum) < doubleSum {
    print("Double is more precisely")
} else {
    print("The cancer on the mountaine will has wistle sooner than this happen")
}

//: [Next](@next)
