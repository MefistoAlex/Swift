//
//  Questions.swift
//  AnimalQuiz
//
//  Created by Alexandr Mefisto on 27.07.2022.
//
enum ResponseType {
    case single, multiple, range
}

struct Question {
    let text: String
    let type: ResponseType
    let answers: [Answer]
}
extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(text: "What food do you prefer?", type: .single, answers: [
                Answer(text: "Stake", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrot", type: .rabbit),
                Answer(text: "Corn", type: .turtle)
            ]),
            Question(text: "What do you like to do?", type: .multiple, answers: [
                Answer(text: "Swim", type: .dog),
                Answer(text: "Sleep", type: .cat),
                Answer(text: "Hug", type: .rabbit),
                Answer(text: "Eat", type: .turtle)
            ]),
            Question(text: "Do you like car travel?", type: .range, answers: [
                Answer(text: "Love", type: .dog),
                Answer(text: "Love", type: .cat),
                Answer(text: "Hate", type: .rabbit),
                Answer(text: "Hate", type: .turtle)
            ])
        ]
    }
}
