//: [Previous](@previous)

import Foundation
import libkern
// task 1

enum Color: String {
    case black = "Black"
    case white = "White"
}
enum ChessFigure {
    case pawn (color: Color, vertical: Character, horisontal: UInt)
    case knigth (color: Color, vertical: Character, horisontal: UInt)
    case bishop (color: Color, vertical: Character, horisontal: UInt)
    case rock (color: Color, vertical: Character, horisontal: UInt)
    case queen (color: Color, vertical: Character, horisontal: UInt)
    case king (color: Color, vertical: Character, horisontal: UInt)
}

var blackKing: ChessFigure = .king(color: .black, vertical: "b", horisontal: 8)
var whiteKing: ChessFigure = .king(color: .white, vertical: "b", horisontal: 6)
var whiteRock: ChessFigure = .king(color: .white, vertical: "h", horisontal: 8)

var chessArray = [blackKing, whiteKing, whiteRock]


