//
//  Answer.swift
//  AnimalQuiz
//
//  Created by Alexandr Mefisto on 26.07.2022.
//
enum AnimalType: String {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "dog"
        case .cat:
            return "cat"
        case .rabbit:
            return "rabbit"
        case .turtle:
            return "turtle"
        }
    }
}

struct Answer {
    let text: String
    let type: AnimalType
}
