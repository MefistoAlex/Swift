//: [Previous](@previous)

import Foundation

// task 1

let deposite = 500000.00
let rate = 0.11
let period = 5
var profit = 0.00

for _ in 1 ... period {
    profit += (deposite + profit) * rate
}

print("Deosite after \(period) years will be \(deposite + profit)")

// task 2

let base = 5
let power = 3
var result = 1
for _ in 1 ... 3 {
    result *= base
}

print(result)

// task 3
let intArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
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

// task 4
for index in 1 ... 100 {
    let random = Int.random(in: 1 ... 10)
    if random % 5 == 0 {
        print("Iteration \(index)")
        break
    }
}

// task 5

let hight = 10
let upPerDay = 2
let downPerNigth = 1
var possition = 0
var dayCounter = 0
while possition < hight {
    possition += upPerDay
    possition -= downPerNigth
    dayCounter += 1
}

print("Turtle get on top on \(dayCounter) day")

// task 6

let array = [2, 2, 3, 5, 5, 3, 2]
var duplicateIndexes = [Int]()
for _ in 0 ..< array.count - 1 {
    duplicateIndexes += [array.count]
}

var dropArray = array.dropFirst()
for index in 0 ..< array.count {
    let value = array[index]
    let duplIdnex = dropArray.firstIndex(of: value)
    if let unwrapIndex = duplIdnex {
        duplicateIndexes[index] = unwrapIndex
    }
    dropArray = dropArray.dropFirst()
}

var searchedIndex = 0

if let index = duplicateIndexes.min() {
    searchedIndex = index
}

let searchedValue = array[searchedIndex]
print("In array")
print(array)
print("Min duplicate value is \(searchedValue)")

//: [Next](@next)
