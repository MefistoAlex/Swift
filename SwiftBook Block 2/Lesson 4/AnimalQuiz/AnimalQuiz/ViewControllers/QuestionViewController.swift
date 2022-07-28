//
//  QuestionViewController.swift
//  AnimalQuiz
//
//  Created by Alexandr Mefisto on 26.07.2022.
//

import UIKit

final class QuestionViewController: UIViewController {
    @IBOutlet private var questionLabel: UILabel!

    @IBOutlet private var progresView: UIProgressView!

    // MARK: Stack Views

    @IBOutlet private var rangeAnswerStackView: UIStackView!
    @IBOutlet private var multipleAnswerStackView: UIStackView!
    @IBOutlet private var singleAnswerStackView: UIStackView!

    // MARK: Answer Outlet Collections

    // range answer
    @IBOutlet private var rangeAnswerLabels: [UILabel]!
    @IBOutlet private var questionSlider: UISlider! {
        didSet {
            let answerCount = Float(currentAnswers.count - 1)
            questionSlider.value = answerCount
        }
    }

    // multiple answer
    @IBOutlet private var multipleAnswerSwitches: [UISwitch]!
    @IBOutlet private var multipleAnswerLable: [UILabel]!
    // single answer
    @IBOutlet private var singleAnswerButtons: [UIButton]!

    // MARK: Priperties

    private let questions = Question.getQuestions()
    private var chosenAnswers: [Answer] = []
    private var currentQuestionIndex = 0
    private var currentAnswers: [Answer] {
        questions[currentQuestionIndex].answers
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    // MARK: Actions

    @IBAction private func singleAnswerButtonDidTab(_ sender: UIButton) {
        guard let currentIndex = singleAnswerButtons.firstIndex(of: sender) else { return }

        let currentAnswer = currentAnswers[currentIndex]
        chosenAnswers.append(currentAnswer)

        nextQuestion()
    }

    @IBAction private func multipleAnswerButtonDidTab(_ sender: UIButton) {
        for (switcher, answer) in zip(multipleAnswerSwitches, currentAnswers) {
            if switcher.isOn {
                chosenAnswers.append(answer)
            }
        }

        nextQuestion()
    }

    @IBAction private func rangeAnswerButtonDidTab(_ sender: UIButton) {
        let index = Int(questionSlider.value)
        chosenAnswers.append(currentAnswers[index])

        nextQuestion()
    }
}

// MARK: Private

extension QuestionViewController {
    private func updateUI() {
        // hide stacks
        [singleAnswerStackView, multipleAnswerStackView, rangeAnswerStackView].forEach { $0?.isHidden = true }

        // get current question
        let currentQuestion = questions[currentQuestionIndex]

        // set current question for label
        questionLabel.text = currentQuestion.text

        // calculate total progress
        let totalProgress = Float(currentQuestionIndex) / Float(questions.count)
        progresView.setProgress(totalProgress, animated: true)

        // set question number
        title = "Question №\(currentQuestionIndex + 1) from \(questions.count)"

        // show current stack view
        showCurrentStackView(for: currentQuestion.type)
    }

    private func showCurrentStackView(for type: ResponseType) {
        switch type {
        case .single:
            showSingleStackView(with: currentAnswers)
        case .multiple:
            showMultipleStackView(with: currentAnswers)
        case .range:
            showRangeStackView(with: currentAnswers)
        }
    }

    private func showSingleStackView(with answers: [Answer]) {
        singleAnswerStackView.isHidden = false
        // zip is awesome thing!!!)
        for (button, answer) in zip(singleAnswerButtons, answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }

    private func showMultipleStackView(with answers: [Answer]) {
        multipleAnswerStackView.isHidden = false
        for (label, answer) in zip(multipleAnswerLable, answers) {
            label.text = answer.text
        }
    }

    private func showRangeStackView(with answers: [Answer]) {
        rangeAnswerStackView.isHidden = false
        rangeAnswerLabels.first?.text = answers.first?.text
        rangeAnswerLabels.last?.text = answers.last?.text
    }

    private func nextQuestion() {
        currentQuestionIndex += 1
        if currentQuestionIndex < questions.count {
            updateUI()
            return
        }
        showAnswers()
    }

    private func showAnswers() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let finalViewController = storyboard.instantiateViewController(withIdentifier: "FinalViewController") as? FinalViewController
        if let finalViewController = finalViewController {
            finalViewController.answers += chosenAnswers
            navigationController?.pushViewController(finalViewController, animated: true)
        }
    }
}
