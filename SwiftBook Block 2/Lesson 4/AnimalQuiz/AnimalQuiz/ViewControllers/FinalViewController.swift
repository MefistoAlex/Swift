//
//  FinalViewController.swift
//  AnimalQuiz
//
//  Created by Alexandr Mefisto on 26.07.2022.
//

import UIKit

final class FinalViewController: UIViewController {
    // MARK: Home Task

    // send here array witn answers
    // find the most common animal
    // show results
    // delete back button on navigation

    // MARK: Outlets

    @IBOutlet private var resultLable: UILabel!
    @IBOutlet private var descriptionLabel: UILabel!

    // MARK: Properties

    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.setHidesBackButton(true, animated: false)

        let resultAnimal = findMostCommonAnimal()

        switch resultAnimal {
        case .dog:
            resultLable.text = "You are \(AnimalType.dog.rawValue)"
            descriptionLabel.text = AnimalType.dog.definition
        case .cat:
            resultLable.text = "You are \(AnimalType.cat.rawValue)"
            descriptionLabel.text = AnimalType.cat.definition
        case .rabbit:
            resultLable.text = "You are \(AnimalType.rabbit.rawValue)"
            descriptionLabel.text = AnimalType.rabbit.definition
        case .turtle:
            resultLable.text = "You are \(AnimalType.turtle.rawValue)"
            descriptionLabel.text = AnimalType.turtle.definition
        }
        // Do any additional setup after loading the view.
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}

// MARK: Privates

extension FinalViewController {
    private func findMostCommonAnimal() -> AnimalType {
        var result = AnimalType.dog
        var dogCounter = 0
        var catCounter = 0
        var rabbitCounter = 0
        var turtleCounter = 0

        answers.forEach {
            switch $0.type {
            case .dog:
                dogCounter += 1
            case .cat:
                catCounter += 1
            case .rabbit:
                rabbitCounter += 1
            case .turtle:
                turtleCounter += 1
            }
        }

        let maxCount = [dogCounter, catCounter, rabbitCounter, turtleCounter].max()

        if let count = maxCount {
            if dogCounter == count {
                result = .dog
            }
        }

        if let count = maxCount {
            if catCounter == count {
                result = .cat
            }
        }

        if let count = maxCount {
            if rabbitCounter == count {
                result = .rabbit
            }
        }

        if let count = maxCount {
            if turtleCounter == count {
                result = .turtle
            }
        }

        return result
    }
}
