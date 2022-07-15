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
        
        var colorOn: UIColor {
            switch self {
            case .green:
                return UIColor.green
            case .yellow:
                return UIColor.yellow
            case.red:
                return UIColor.red
            }
        }
        
        var colorOff: UIColor {
            switch self {
            case .green:
                return UIColor.green.withAlphaComponent(CGFloat(0.3))
            case .yellow:
                return UIColor.yellow.withAlphaComponent(CGFloat(0.3))
            case.red:
                return UIColor.red.withAlphaComponent(CGFloat(0.3))
            }
        }
       
    }

    @IBOutlet private var redLigth: UIView!
    @IBOutlet private var yellowLigth: UIView!
    @IBOutlet private var greenLight: UIView!
    @IBOutlet private var startButton: UIButton!
    private var currentColor: Color?

    override func viewDidLoad() {
        super.viewDidLoad()
        greenLight.layer.cornerRadius = 100
        yellowLigth.layer.cornerRadius = 100
        redLigth.layer.cornerRadius = 100

        greenLight.backgroundColor = Color.green.colorOff
        yellowLigth.backgroundColor = Color.yellow.colorOff
        redLigth.backgroundColor = Color.red.colorOff

    }

    @IBAction func buttonStartAction() {
        if currentColor == nil {
            startButton.setTitle("Change collor", for: .normal)
            currentColor = .green
        }
        if let color = currentColor {
            switch color {
            case .green:
                greenLight.backgroundColor = Color.green.colorOn
                yellowLigth.backgroundColor = Color.yellow.colorOff
                redLigth.backgroundColor = Color.red.colorOff
                currentColor = .yellow
            case .yellow:
                greenLight.backgroundColor = Color.green.colorOff
                yellowLigth.backgroundColor = Color.yellow.colorOn
                redLigth.backgroundColor = Color.red.colorOff
                currentColor = .red
            case .red:
                greenLight.backgroundColor = Color.green.colorOff
                yellowLigth.backgroundColor = Color.yellow.colorOff
                redLigth.backgroundColor = Color.red.colorOn
                currentColor = .green
            
            }
        }
    }
}
