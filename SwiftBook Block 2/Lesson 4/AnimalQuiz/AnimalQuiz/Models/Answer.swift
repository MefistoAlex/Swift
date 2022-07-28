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
            return "You like being with friends. You surround yourself with people who you like and who are always ready to help."
        case .cat:
            return "You are on your mind. Love to walk on your own. You value solitude."
        case .rabbit:
            return "You like everything soft. You are healthy and full of energy."
        case .turtle:
            return "Your strength is in wisdom. Slow and thoughtful wins over long distances."
        }
    }
}

struct Answer {
    let text: String
    let type: AnimalType
}
