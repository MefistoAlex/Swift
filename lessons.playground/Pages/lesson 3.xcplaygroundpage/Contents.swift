//: [Previous](@previous)

import Foundation


// task 1


//why error of compilation???
//print("Task 1")
//let price: Int
//let count = 21
//if count <= 10 {
//    price = 1000
//} else if (11...20) ~= count{
//    price = 800
//} else if count >= 20{
//    price = 600
//}
//print (price) //ERROR Constant 'price' used before being initialized


print("Task 1")
var price = 0
let count = 21
if count <= 10 {
    price = 1000
} else if (11...20) ~= count{
    price = 800
} else if count >= 20{
    price = 600
}
print (price)


//task 2
let userInputAge = "34e"
let userAge = Int(userInputAge)
switch userAge{
case .none:
    print("No value")
case .some(let value):
    print(value)
}
if userAge == nil{
    print("no value from if")
}
print (userAge!)



//task 3
let birthMonth = 1
switch birthMonth {
case 1,2,12:
    print("winter")
case (3...5):
    print("spring")
case (6...8):
    print ("summer")
case (9...11):
    print ("autumn")
default:
    print("Error")
}

//task 4
enum DangerLevel:String {
    case a = "Turn off all ellectrical tols"
    case b = "Close all doors and windows"
    case c = "Keep calm"
}
let danger = DangerLevel.a
switch danger{
case .a:
    print(DangerLevel.a.rawValue)
    fallthrough
case .b:
    print(DangerLevel.b.rawValue)
    fallthrough
case .c:
    print(DangerLevel.c.rawValue)
    fallthrough
default:
    print("To late... You'll die")
}


//task 5
let phoneNumber = "+3806324149"

let phoneLendth = phoneNumber.count


switch phoneLendth{
case 13 where phoneNumber.starts(with: "+380"):
    print("Ukranian number")
case (0...12):
    print("You must add \(13 - phoneLendth) symbols")
case (14...):
    print("You must remove \(phoneLendth - 13) symbols")
default:
    print("Error")
}


if phoneLendth == 13{
    if phoneNumber.starts(with: "+380"){
        print("Ukranian number")
    } else{
        print("Not ukranian number")
    }
} else if 0...12 ~= phoneLendth{
    print("You must add \(13 - phoneLendth) symbols")
}else if 14... ~= phoneLendth{
    print("You must remove \(phoneLendth - 13) symbols")
}


//task 6
enum CalculationType{
    case plus
    case minus
    case multiply
    case divide
}

let firstValue = 12
let secondValue = 23
let calcType = CalculationType.minus
switch calcType {
case .plus:
    print("\(firstValue) plus \(secondValue) = \(firstValue + secondValue)")
case .minus:
    print("\(firstValue) minus \(secondValue) = \(firstValue - secondValue)")
case .multiply:
    print("\(firstValue) multiply \(secondValue) = \(firstValue * secondValue)")
case .divide:
    print("\(firstValue) divide \(secondValue) = \(firstValue + secondValue)")
}



enum CurrencyUnit{
    case hrivna
    case dollar (country: DollarCountries)
    case euro
    
    enum DollarCountries:String{
        case usa = "USA"
        case canada = "Canada"
        case australia = "Australia"
    }
}
let currencyUnit = CurrencyUnit.dollar(country: .canada)
print(currencyUnit)
//: [Next](@next)
