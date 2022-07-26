//: [Previous](@previous)

import Foundation

//task 1
func getHeart() -> String {
    "\u{1F49D}"
}

func getDog() -> String {
    "\u{1F415}"
}

func getSpades() -> String {
    "\u{2660}"
}
print("\(getHeart()) \(getDog()) \(getSpades())")

//task 2

func getFieldCollor(x: Int, y: Int) -> String {
    if x < 1 || y < 1 {
        return  "Field over the range of chessboard"
    }
    if (x + y) % 2 == 0 {
        return "Black"
    } else {
        return "White"
    }
}
func getFieldCollor(x: Character, y: Int) -> String {
    let fieldsNames = "abcdefgh"
    var indexOpt = fieldsNames.firstIndex(of: x)
    if indexOpt != nil {
        let index = fieldsNames.distance(from: fieldsNames.startIndex, to: indexOpt!)
        return getFieldCollor(x: index + 1, y: y)
    } else {
        return "Field over the range of chessboard"
    }

}



let color = getFieldCollor(x: "r", y: 4)
print(color)

//task 3
func reverseArray<T> (array: inout [T])  {
    array.reverse()
}
var arr1 = [34,5,6,7,8,7]
reverseArray(array: &arr1)
arr1


//: [Next](@next)
