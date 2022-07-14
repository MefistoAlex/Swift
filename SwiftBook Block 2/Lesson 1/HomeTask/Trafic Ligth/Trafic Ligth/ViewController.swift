//
//  ViewController.swift
//  Trafic Ligth
//
//  Created by Alexandr Mefisto on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    enum Color {
        case green
        case yellow
        case red
    }

    @IBOutlet var redLigth: UIView!
    @IBOutlet var yellowLigth: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    var currentColor: Color?
    // creating On colors
    let greenColorOn = UIColor.green.withAlphaComponent(CGFloat(1.0)).cgColor
    let redColorOn = UIColor.red.withAlphaComponent(CGFloat(1.0)).cgColor
    let yellowColorOn = UIColor.yellow.withAlphaComponent(CGFloat(1.0)).cgColor
    // creating Off collors
    let greenColorOff = UIColor.green.withAlphaComponent(CGFloat(0.3)).cgColor
    let redColorOff = UIColor.red.withAlphaComponent(CGFloat(0.3)).cgColor
    let yellowColorOff = UIColor.yellow.withAlphaComponent(CGFloat(0.3)).cgColor

    override func viewDidLoad() {
        super.viewDidLoad()
        greenLight.layer.cornerRadius = 100
        yellowLigth.layer.cornerRadius = 100
        redLigth.layer.cornerRadius = 100

        greenLight.layer.backgroundColor = greenColorOff
        yellowLigth.layer.backgroundColor = yellowColorOff
        redLigth.layer.backgroundColor = redColorOff

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonStartAction() {
        if currentColor == nil {
            startButton.setTitle("Change collor", for: .normal)
            currentColor = .green
        }
        if let color = currentColor {
            switch color {
            case .green:
                greenLight.layer.backgroundColor = greenColorOn
                yellowLigth.layer.backgroundColor = yellowColorOff
                redLigth.layer.backgroundColor = redColorOff
                currentColor = .yellow
            case .yellow:
                greenLight.layer.backgroundColor = greenColorOff
                yellowLigth.layer.backgroundColor = yellowColorOn
                redLigth.layer.backgroundColor = redColorOff
                currentColor = .red
            case .red:
                greenLight.layer.backgroundColor = greenColorOff
                yellowLigth.layer.backgroundColor = yellowColorOff
                redLigth.layer.backgroundColor = redColorOn
                currentColor = .green
            }
        }
    }
}
