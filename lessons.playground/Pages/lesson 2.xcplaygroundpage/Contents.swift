//: [Previous](@previous)

import Foundation

//Task 1
print("Task 1")
let value1 = 34.5
let value2 = 366.1
let sumOfValues = value1 + value2
print("Sum of values = \(sumOfValues)")
print()

//Task 2
print("Task 2")
let numberOne = 23
let numberTwo = 13
let result = numberOne / numberTwo
let remainder = numberOne % numberTwo
let resultString1 = "\(numberOne) divide \(numberTwo) is equal \(result), reminder of division is \(remainder)"
let resultString2 = "Result of division \(numberOne) on \(numberTwo) is equal \(result) \(remainder)/\(numberTwo)"
print(resultString1)
print(resultString2)
print()

//Task 3
print("Task 3")
//constants
let kDaysInYear = 365
let kMonthInYear = 30
let kSecondsInDay = 86400

// my birthday
let birthDay = 3
let birthMonth = 1
let birthYear = 1990
//today
let currentDay = 23
let currentMonth = 6
let currentYear = 2022

let yearsILived = currentYear - birthYear + (currentMonth < birthMonth  ? -1 : 0)
let monthILived = yearsILived * kMonthInYear + (currentMonth < birthMonth  ? (birthMonth - currentMonth) : (currentMonth - birthMonth))
let daysILived = yearsILived * kDaysInYear + monthILived * kDaysInYear + (currentDay - birthDay)
let secondsILived = daysILived * kSecondsInDay

print("I was born \(birthDay).\(birthMonth).\(birthYear)")
print("Current date \(currentDay).\(currentMonth).\(currentYear)")
print("I lived \(yearsILived) years, \(monthILived) moths, \(daysILived) days, \(secondsILived) seconds")
//wich season
if birthMonth == 12 || (1...2 ~= birthMonth){
    print("I was born in winter")
} else if (3...5 ~= birthMonth){
    print("I was born in spring")
} else if (6...8 ~= birthMonth){
    print("I was born in summer")
} else if (9...11 ~= birthMonth){
    print("I was born in autumn")
}
print()


//Task 4
print("Task 4")
let deposit = 5000.00
let yeasrs = 25
let interestRate = 0.12

let depositInterest = deposit * interestRate * Double(yeasrs)

print("Deposit interests from \(deposit)$ (rate: \(interestRate)) after \(yeasrs) years will be \(depositInterest)$")
/*:
 ### Задание 4. Депозитный калькулятор

 Сколько процентов(X) составит выплата по депозиту в A рублей при ставке B% годовых если забрать его через C лет? При условии, что проценты считаются только с тела депозита.

 А,B,C - входные параметры, X - искомое
 
 P.S. Помните, переменные нужно называть, чтоб они были понятными :-)
 
 Пример вывода "Выплата по депозиту суммой <значение> (ставка <значение>%) через <значение> лет будет <значение>%"
 
 */


//: [Next](@next)
