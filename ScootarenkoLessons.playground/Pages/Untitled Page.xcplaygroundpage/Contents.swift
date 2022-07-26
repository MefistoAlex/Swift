//: [Previous](@previous)

import Foundation

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
performers.forEach{ $0.performance() }
//: [Next](@next)
