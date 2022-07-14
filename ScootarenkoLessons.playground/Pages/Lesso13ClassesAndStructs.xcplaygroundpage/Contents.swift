//: [Previous](@previous)

import Foundation

class Student {
    var name : String
    var lastName : String
    var yearOfBirth : Int
    var averageMark : Double
    init(name: String, lastName: String,  yearOfBirth: Int, averageMark: Double) {
        self.name = name
        self.lastName = lastName
        self.yearOfBirth = yearOfBirth
        self.averageMark = averageMark
    }
}

func printStudents (list : [Student]) {
    for (index, student) in list.enumerated() {
        print("#\(index + 1) \(student.name) \t\(student.lastName) \t\(student.yearOfBirth) \t\(student.averageMark)")
    }
}
var student1 = Student (name: "Alex", lastName: "aefisto",  yearOfBirth: 1990, averageMark: 4.5)
var student2 = Student (name: "Alex1", lastName: "cefisto1",  yearOfBirth: 1991, averageMark: 4.6)
var student3 = Student (name: "Alex2", lastName: "refisto2",  yearOfBirth: 1992, averageMark: 4.7)
var student4 = Student (name: "Alex3", lastName: "Mefisto3",  yearOfBirth: 1993, averageMark: 4.8)
var student5 = Student (name: "Alex4", lastName: "Mefisto4",  yearOfBirth: 1994, averageMark: 4.9)

var arrayOfStudents = [student1, student2, student3, student4, student5]
//print("sort by average marks")
//printStudents (list : arrayOfStudents.sorted {$0.averageMark > $1.averageMark})
//print("sort by last name down")
//printStudents (list : arrayOfStudents.sorted {$0.lastName.lowercased() > $1.lastName.lowercased()})

var arrayCopy = arrayOfStudents
//arrayCopy[0].name = "sadasdasd"



printStudents (list : arrayOfStudents)
for elem in arrayCopy {
    elem.averageMark = 0.0
}

print("array")
printStudents (list : arrayOfStudents)
print("copy")
printStudents (list : arrayCopy)
