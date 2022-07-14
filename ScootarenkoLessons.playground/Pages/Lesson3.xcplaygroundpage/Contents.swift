//: [Previous](@previous)

import Foundation
/**
 *TUPLES
 */

// task1
var myMax = (pushUps: 50, pullUps: 10, squatts: 30)
var myFriendMax = (pushUps: 25, pullUps: 13, squatts: 25)

print("My max count in pushups: \(myMax.0), in pullups: \(myMax.pullUps) and in squatts: \(myMax.squatts) ")
print("My friend max count in pushups: \(myFriendMax.0), in pullups: \(myFriendMax.pullUps) and in squatts: \(myFriendMax.squatts) ")

var temp: Int

//temp = myMax.pushUps
//myMax.pushUps = myFriendMax.pushUps
//myFriendMax.pushUps = temp
//
//temp = myMax.pullUps
//myMax.pullUps = myFriendMax.pullUps
//myFriendMax.pullUps = temp
//
//temp = myMax.squatts
//myMax.squatts = myFriendMax.squatts
//myFriendMax.squatts = temp

print("After changing")
print("My max count in pushups: \(myMax.0), in pullups: \(myMax.pullUps) and in squatts: \(myMax.squatts) ")
print("My friend max count in pushups: \(myFriendMax.0), in pullups: \(myFriendMax.pullUps) and in squatts: \(myFriendMax.squatts) ")


var diference  = (pushUps: 0, pullUps: 0, squatts: 0)
diference.pushUps = myMax.pushUps - myFriendMax.pushUps
diference.pullUps = myMax.pullUps - myFriendMax.pullUps
diference.squatts = myMax.squatts - myFriendMax.squatts

print("Diferensce betwen me and my friend")
print("\(diference.pushUps > 0 ? "I do beter pushups on \(diference.pushUps)" : "My friend does better pushups on \(abs(diference.pushUps))")")

print("\(diference.pullUps > 0 ? "I do beter pullUps on \(diference.pullUps)" : "My friend does better pullUps on \(abs(diference.pullUps))")")

print("\(diference.squatts > 0 ? "I do beter squatts on \(diference.squatts)" : "My friend does better squatts on \(abs(diference.squatts))")")

//: [Next](@next)
