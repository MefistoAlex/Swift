//: [Previous](@previous)

import Foundation

//task 1
var studentsMarks = [
    "Mefisto Alex" : 5,
    "Tesla Nikola" : 5,
    "Nikki Sixx" : 3,
    "Jhony Depp" : 4,
    "Silvester Stallone" : 3]

studentsMarks["Nikki Sixx"] = 4
studentsMarks["Silvester Stallone"] = 5

studentsMarks["Elon Musk"] = 3
studentsMarks["Richard Brenson"] = 5

studentsMarks.removeValue(forKey: "Tesla Nikola")
studentsMarks.removeValue(forKey: "Jhony Depp")

let sum = studentsMarks.values.reduce(0, {x, y in x + y})
let average = Double(sum) / Double(studentsMarks.count)

print("Sum of marks \(sum), average marks \(average)")

//task 2
let daysInMonth = [
    "January" : 31,
    "February" : 28,
    "March" : 31,
    "April" : 30,
    "May" : 31,
    "June" : 30,
    "July" : 31,
    "August" : 31,
    "September" : 30,
    "Octember" : 31,
    "November" : 30,
    "December" : 31]
print("days In Month \n")
for (month, days) in daysInMonth {
    print("In \(month) \(days) days")
}
print
print("\ndays In Month \nfor keys")
for month in daysInMonth.keys {
    print("In \(month) \(daysInMonth[month]!) days")
}

//task 3
var chessFields = [String : Bool]()
var fieldsCollor = false
for char in "abcdefgh" {
    for number in 1...8 {
        chessFields[String(char) + String(number)] = fieldsCollor
        fieldsCollor = !fieldsCollor
    }
    fieldsCollor = !fieldsCollor
}
chessFields["f5"]
