//: [Previous](@previous)

import Foundation

// task 1  create chess boad and subscript wich return color of field
enum ChessColor {
    case white, black
}

struct ChessBoard {
    subscript(column: String, row: Int) -> ChessColor? {
        guard row >= 1 && row <= 8 else { return nil }
        let columnNumber: Int
        switch column {
        case "a": columnNumber = 1
        case "b": columnNumber = 2
        case "c": columnNumber = 1
        case "d": columnNumber = 1
        case "e": columnNumber = 1
        case "f": columnNumber = 1
        case "g": columnNumber = 1
        case "h": columnNumber = 1
        default: return nil
        }
        return (columnNumber + row) % 2 == 0 ? .black : .white
    }
}

let chess = ChessBoard()

chess["a", 2]

// create game tic tac toe

enum CrossZero: String {
    case cross = "X"
    case zero = "O"
}

struct TicTacToe {
    var feilds =  [String: CrossZero]()
    subscript(row: Int, column: Int) -> CrossZero? {
        get {
            let key = "\(row) \(column)"
            return feilds[key]
        }
        set {
            let key = "\(row) \(column)"
            feilds[key] = newValue
        }
    }
    var description: String {
        var resultString = " _ _ _ \n"
        for row in 1...3 {
            resultString += "|"
            for column in 1...3 {
                resultString += self[row,column]?.rawValue ?? " "
                resultString += "|"
            }
            resultString += "\n"
        }
        resultString += " - - - \n"
        return resultString
    }
}
var game = TicTacToe()

game[1, 1] = .cross
game[2, 1] = .cross
game[3, 1] = .cross
game[1, 2] = .zero
print(game.description)
//: [Next](@next)
