//: [Previous](@previous)

import Foundation

// MARK: Task 1

struct DateStruct {
    var year: Int
    var month: Int
    var day: Int
    var description: String {
        "\(year).\(month).\(year)"
    }
}

struct Student {
    var name: String
    var lastName: String
    var birthDate: DateStruct
    var fullName: String {
        name + " " + lastName
    }

    var howOld: Int {
        let currentYear = Calendar.current.component(.year, from: Date())
        return currentYear - birthDate.year
    }

    var howLongStudied: Int {
        howOld > 6 ? howOld - 6 : 0
    }
}

let student = Student(name: "Alex", lastName: "Mefisto", birthDate: DateStruct(year: 1990, month: 1, day: 3))
student.howOld
student.howLongStudied

// MARK: Task 2

struct Point {
    var positionX: Double
    var positionY: Double
}

struct Segment {
    var pointA: Point
    var pointB: Point
    var length: Double {
        get { let distanceX = abs(pointA.positionX - pointB.positionX)
            let distanceY = abs(pointA.positionY - pointB.positionY)
            return (pow(distanceX, 2.0) + pow(distanceY, 2.0)).squareRoot()
        }
        set {
        }
    }

    var middlePoint: Point {
        get {
            Point(
                positionX: (pointA.positionX + pointB.positionX) / 2.0,
                positionY: (pointA.positionY + pointB.positionY) / 2.0)
        } set {
            pointA.positionX = 2 * newValue.positionX - pointB.positionX
            pointA.positionY = 2 * newValue.positionY - pointB.positionY
            
            pointB.positionX = 2 * newValue.positionX - pointA.positionX
            pointB.positionY = 2 * newValue.positionY - pointA.positionY
        }
    }
}

var segment = Segment(pointA: Point(positionX: 0, positionY: 0), pointB: Point(positionX: 1, positionY: 1))
segment.length
segment.middlePoint
segment.middlePoint = Point(positionX: 1.5, positionY: 0.5)
segment.pointA
segment.pointB
segment.middlePoint
//: [Next](@next)
