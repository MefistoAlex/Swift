//: [Previous](@previous)

import Foundation

// MARK: Task 1

struct Box {
    var positionX: Int
    var positionY: Int
}

struct Character {
    var positionX: Int
    var positionY: Int
}

enum Direction {
    case up, down, left, right
}

struct Room {
    var weight: Int
    var height: Int
    var hero: Character
    var box: Box
    func printRoom() {
        // upper border
        var weingthBorder = " "
        for _ in 1 ... weight {
            weingthBorder += "_"
        }
        weingthBorder += " "
        print(weingthBorder)
        for y in 1 ... height {
            var levelHeight = "|"
            for x in 1 ... weight {
                // if we find hero
                if hero.positionY == y && hero.positionX == x {
                    levelHeight += "x"
                    // if we
                } else if box.positionY == y && box.positionX == x {
                    levelHeight += "b"
                } else {
                    levelHeight += "."
                }
            }
            levelHeight += "|"
            print(levelHeight)
        }
        // lover border
        print(weingthBorder.replacingOccurrences(of: "_", with: "-"))
    }

    mutating func moveHero(direction: Direction) {
        switch direction {
        case .right:
            if hero.positionX + 1 <= weight {
                if isHereBox(positionX: hero.positionX + 1, positionY: hero.positionY) {
                    if moveBox(direction: .right) {
                        hero.positionX += 1
                        return
                    } else {
                        break
                    }
                } else {
                    hero.positionX += 1
                    return
                }
            }
        case .left:
            if hero.positionX - 1 > 0 {
                if isHereBox(positionX: hero.positionX - 1, positionY: hero.positionY) {
                    if moveBox(direction: .left) {
                        hero.positionX -= 1
                        return
                    } else {
                        break
                    }
                } else {
                    hero.positionX += 1
                    return
                }
            }
        case .up:
            if hero.positionY - 1 > 0 {
                if isHereBox(positionX: hero.positionX, positionY: hero.positionY - 1) {
                    if moveBox(direction: .up) {
                        hero.positionY -= 1
                        return
                    } else {
                        break
                    }
                } else {
                    hero.positionY -= 1
                    return
                }
            }
        case .down:
            if hero.positionY + 1 <= height {
                if isHereBox(positionX: hero.positionX, positionY: hero.positionY + 1) {
                    if moveBox(direction: .down) {
                        hero.positionY += 1
                        return
                    } else {
                        break
                    }
                } else {
                hero.positionY += 1
                return
                }
            }
        }
        print("I can't move! The wall!!!")
    }

    mutating func moveBox(direction: Direction) -> Bool {
        switch direction {
        case .right:
            if box.positionX + 1 <= weight {
                box.positionX += 1
                return true
            }
        case .left:
            if box.positionX - 1 > 0 {
                box.positionX -= 1
                return true
            }
        case .up:
            if box.positionY - 1 > 0 {
                box.positionY -= 1
                return true
            }
        case .down:
            if box.positionY + 1 <= height {
                box.positionY += 1
                return true
            }
        }
        return false
    }

    func isHereBox(positionX: Int, positionY: Int) -> Bool {
        box.positionY == positionY && box.positionX == positionX ? true : false
    }
}

var room = Room(weight: 3, height: 3, hero: Character(positionX: 1, positionY: 1), box: Box(positionX: 2, positionY: 2))
room.printRoom()
room.moveHero(direction: .down)

room.moveHero(direction: .right)
room.printRoom()
//: [Next](@next)
