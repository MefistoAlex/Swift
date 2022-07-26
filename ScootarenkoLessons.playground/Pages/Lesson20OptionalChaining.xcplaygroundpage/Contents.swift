//: [Previous](@previous)

import Foundation

class Person {
    let name: String
    weak var father: Person?
    weak var mother: Person?
    var brothers: [Person]?
    var sisters: [Person]?
    var children: [Person]?
    init(name: String) {
        self.name = name
    }
    
    func addBrother (brother: Person) {
        if brothers == nil {
            brothers = Array<Person>()
        }
        brothers! += [brother]
    }
    func addSister (sister: Person) {
        if sisters == nil {
            sisters = Array<Person>()
        }
        sisters! += [sister]
    }
    func addChild (child: Person) {
        if children == nil {
            children = Array<Person>()
        }
        children! += [child]
    }
    func getAuntsCount () -> Int {
        var auntCount = 0
        if let count = father?.sisters?.count {
            auntCount += count
        }
        if let count = mother?.sisters?.count {
            auntCount += count
        }
        return auntCount
    }
    func getUnkleCount () -> Int {
        var unkleCount = 0
        if let count = father?.brothers?.count {
            unkleCount += count
        }
        if let count = mother?.brothers?.count {
            unkleCount += count
        }
        return unkleCount
    }
    func getCousins () -> Int {
        var cousins = 0
        father?.brothers?.forEach{ cousins += $0.children?.count ?? 0}
        father?.sisters?.forEach{ cousins += $0.children?.count ?? 0}
        mother?.brothers?.forEach{ cousins += $0.children?.count ?? 0}
        mother?.sisters?.forEach{ cousins += $0.children?.count ?? 0}
        return cousins
    }
}

class Man: Person {
    func moveCouch() {
        print("\(name) is moving a couch")
    }
}

class Woman: Person {
    func cookDiner () {
        print("\(name) is cooking diner")
    }
}
//Parents
let mom = Woman(name: "Helen")
let father = Man(name: "Uriy")
//Brother
let brotherValentine = Man(name: "Brother Valentine")

//Don Family

let granyValentina = Woman(name: "Grany Valintina")
let grandaddySzhora = Man(name: "Granddaddy Szhora")
//aunts and unkles
let auntGalya = Woman(name: "Aunt Galya")
let unkleSasha = Man(name: "Unkle Sasha")
//brothers and sisters
let donSasha = Man(name: "Don Sasha")
let donGosha = Man(name: "Don Gosha")
let shemchukVika = Woman(name: "Shemchuk Vika")
auntGalya.addChild(child: shemchukVika)
unkleSasha.addChild(child: donSasha)
unkleSasha.addChild(child: donGosha)


//Starikovskiy Family
let auntLarisa = Woman(name: "Aunt Larisa")
let cherneckiyVitaliy = Man(name: "Cherneckiy Vitaliy")
let kovalVika = Woman(name: "Koval Vika")
auntLarisa.addChild(child: cherneckiyVitaliy)
auntLarisa.addChild(child: kovalVika)
let unkleKolya = Man(name: "Unkle Kolya")


// Me
let alex = Man(name: "Alex")
alex.father = father
alex.mother = mom
alex.addBrother(brother: brotherValentine)

mom.addBrother(brother: unkleSasha)
mom.addSister(sister: auntGalya)

father.addBrother(brother: unkleKolya)
father.addSister(sister: auntLarisa)

alex.getAuntsCount()
alex.getUnkleCount()
alex.getCousins()



let family = [
    alex,
    brotherValentine,
    mom,
    father,
    auntLarisa,
    auntGalya,
    unkleSasha,
    unkleKolya
]
family.forEach {
    if let member = $0 as? Man {
        member.moveCouch()
    } else if let member = $0 as? Woman {
        member.cookDiner()
    }
}
