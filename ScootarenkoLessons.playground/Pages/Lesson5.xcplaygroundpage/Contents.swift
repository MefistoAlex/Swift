//: [Previous](@previous)

import Foundation

//task 1
func daysInMonth (month: Int) -> Int {
    switch month {
    case 1 :
        return 31
    case 2 :
        return 28
    case 3 :
        return 31
    case 4 :
        return 30
    case 5 :
        return 31
    case 6 :
        return 30
    case 7 :
        return 31
    case 8 :
        return 31
    case 9 :
        return 30
    case 10 :
        return 31
    case 11 :
        return 30
    case 12 :
        return 31
    default :
        return 0
    }
}
func daysPass (month: Int) -> Int {
    var days = 0
    for index in 0...month - 1 {
        days += daysInMonth(month: index)
    }
    return days
}
let myBirthday = 3
let myMoth = 3
let days = daysPass(month: myMoth)
let secondsFromNewYearsDay = (daysPass(month: myMoth) + myBirthday) * 60 * 60


// we have chess desck wich has 8*8 size. Find wich color is field on X Y. If (1 1) is black

let y = 2
let x = 3

let fieldColor = (x + y) % 2 == 0 ? "Black" : "White"






//: [Next](@next)
