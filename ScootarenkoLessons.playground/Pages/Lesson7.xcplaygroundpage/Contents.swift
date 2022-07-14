//: [Previous](@previous)

import Foundation

// task 1

let daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let monthsNames = ["January", "February", "March", "April", "May", "June",
                   "July", "August", "September", "Octembr", "Nowember", "December"]

var tupleArray = Array<(Int ,String)> ()

print(daysInMonth)
print(monthsNames)

for index in 0 ..< daysInMonth.count {
    tupleArray += [(daysInMonth[index], monthsNames[index])]
}


for (days, month) in tupleArray {
    print("In \(days) \(month) days")
}

for (days, month) in tupleArray.reversed() {
    print("In \(days) \(month) days")
}

//task 2

let optionalArray : [Int?] = [3, 5, nil, 45, nil, nil]

var sum = 0
for elem in optionalArray {
    if let value = elem {
        sum += value
    }
}
sum = 0
for elem in optionalArray {
    if  elem != nil {
        sum += elem!
    }
}
sum = 0
for elem in optionalArray {
    sum += elem ?? 0
}

sum = 0
sum = optionalArray.filter{$0 != nil}
    .map{$0!}
    .reduce(0, +)
sum
    

// task 3

let alphebet = "abcdefghijklmnopqrstuvwxyz"
var stringArray = [String]()

for char in alphebet.reversed() {
    stringArray += [String(char)]
}
print(stringArray)




//: [Next](@next)
