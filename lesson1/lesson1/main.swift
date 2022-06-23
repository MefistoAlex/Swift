//
//  main.swift
//  lesson1
//
//  Created by Alexandr Mefisto on 23.06.2022.
//
//

import UIKit

//task 1
print("Task 1\n")

let iCan = "I can"
let code = "code"
print("\(iCan) \(code)\n")

//task 2
print("Task 2\n")

let myAge = 32
let myAgeInTenYears = 42
let daysInYear = 365.25
var daysPassed: Float = Float(myAgeInTenYears) * Float(daysInYear)
print("My age is \(myAge), in ten years I'll be \(myAgeInTenYears) years old. From my Birth Day will pass \(daysPassed) days\n")

//task 3
// calculate the area & perimetr of rigth triangle
print("Task 3\n")

var ACSide = 8.0
var CBSide = 6.0
var ABSide: Double
var area = ACSide * CBSide / 2
ABSide = sqrt(ACSide * ACSide + CBSide * CBSide)

print("Area of triangle  = \(area). Side AB = \(ABSide)")
