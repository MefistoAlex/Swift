//
//  ViewController.swift
//  ColorView
//
//  Created by Alexandr Mefisto on 15.07.2022.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Labels

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!

    // MARK: Sliders

    @IBOutlet private var redSlider: UISlider!
    @IBOutlet private var greenSlider: UISlider!
    @IBOutlet private var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: init

        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red

        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green

        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue

        redLabel.text = "Red (\(Int(redSlider.value)))"
        greenLabel.text = "Green (\(Int(greenSlider.value)))"
        blueLabel.text = "Blue (\(Int(blueSlider.value)))"

        // Do any additional setup after loading the view.
    }
    @IBAction func redSliderChange(_ sender: Any) {
        redLabel.text = "Red (\(Int(redSlider.value)))"
        updateUI()
    }
   
    @IBAction func greenSliderChange(_ sender: Any) {
        greenLabel.text = "Green (\(Int(greenSlider.value)))"
        updateUI()
       
    }
    @IBAction func blueSliderChange(_ sender: Any) {
        blueLabel.text = "Blue (\(Int(blueSlider.value)))"
        updateUI()
    }
    
    //MARK: Private
    private func updateUI() {
        let color = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        view.layer.backgroundColor = color.cgColor
    }
}
