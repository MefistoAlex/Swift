//: [Previous](@previous)

import Foundation

// task 1

let deposite = 500000.00
let rate = 0.11
let period = 5
var profit = 0.00

for _ in 1...period{
    profit += (deposite + profit) * rate
}
print("Deosite after \(period) years will be \(deposite + profit)")

//task 2

let base = 5
let power = 3
var result = 1;
for _ in 1...3{
    result *= base
}
print (result)

//task 3
let intArray = [1,2,3,4,5,6,7,8,9,10]
for value in intArray {
    if value % 2 == 0 {
        print(value)
    }
}

for value in intArray {
    if value % 2 == 0 {
        continue
    }
    print(value)
}

//task 4
for index in (1...100) {
    let random = Int.random(in: 1...10)
    if random % 5 == 0 {
        print("Iteration \(index)")
        break
    }
}

//task 5

let hight = 10
let upPerDay = 2
let downPerNigth = 1
var possition = 0
var dayCounter = 0
while (possition < hight){
    possition += upPerDay
    possition -= downPerNigth
    dayCounter += 1
}
print("Turtle get on top on \(dayCounter) day")

// task 6

let array = [2,1,3,5,3,2]
var duplicateIndexes = [500,500,500,500,500,500]
var matches = Dictionary<Int,Int>()


for index in 0..<6{
    let value = array[index]
    let duplIdnex = array.lastIndex(of: value)
    if index != duplIdnex{
        duplicateIndexes[index] = duplIdnex!
    }
}
let minIndex = duplicateIndexes.min()!


print(array[minIndex])




//: [Next](@next)
