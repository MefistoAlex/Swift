//: [Previous](@previous)

import Foundation

class Performer {
    var name: String
    var lastName: String
    func performance() {
        print("\(name) \(lastName) make performance")
    }

    init(name: String = "", lastName: String = "") {
        self.name = name
        self.lastName = lastName
    }
}

class Artist: Performer {
    override var name: String {
        didSet {
            let randomValue = Int.random(in: 1 ... 4)
            switch randomValue {
            case 1: name = "Valdemar"
            case 2: name = "Equle"
            case 3: name = "Cristoff"
            default: name = "Sandro"
            }
        }
    }

    override func performance() {
        print("\(name) \(lastName) painting")
    }
}

class Dancer: Performer {
    override func performance() {
        print("\(name) \(lastName) dancing")
    }
}

class Musician: Performer {
    override func performance() {
        print("\(name) \(lastName) playing music")
    }
}


let performers = [
    Performer(name: "Alex", lastName: "Mefisto"),
    Artist(name: "Alex", lastName: "Mefisto"),
    Musician(name: "Alex", lastName: "Mefisto"),
    Dancer(name: "Alex", lastName: "Mefisto"),
]

print(performers)
//: [Next](@next)
