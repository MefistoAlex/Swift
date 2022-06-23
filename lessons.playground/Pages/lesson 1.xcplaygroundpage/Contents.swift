import UIKit

//task 1
print("Task 1\n")

let firstString = "I can"
let secondString = "code"
let resultString = firstString + " " + secondString

print(resultString)

//task 2
print("Task 2\n")

let myAge = 32
let myAgeInTenYears = 42
let daysInYear = 365.25
let daysPassed: Float = Float(myAgeInTenYears) * Float(daysInYear)
print("My age is \(myAge), in ten years I'll be \(myAgeInTenYears) years old. From my Birth Day will pass \(daysPassed) days\n")

//task 3
// calculate the area & perimetr of rigth triangle
print("Task 3\n")

let sideAC = 8.0
let sideCB = 6.0
let sideAB: Double
let triangleArea = sideAC * sideCB / 2
sideAB = sqrt(sideAC * sideAC + sideCB * sideCB)
let trianglPerimetr = sideAC + sideCB + sideAB

print("Area of triangle  = \(triangleArea). Side AB = \(sideAB). Perimetr = \(trianglPerimetr)")

var value = 1
value += 1

print(value)
