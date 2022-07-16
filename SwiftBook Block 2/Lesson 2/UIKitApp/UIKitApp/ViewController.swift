//
//  ViewController.swift
//  UIKitApp
//
//  Created by Alexandr Mefisto on 15.07.2022.
//

import UIKit
extension String {
    func textToImage(size: CGFloat) -> UIImage? {
        let nsString = (self as NSString)
        let font = UIFont.systemFont(ofSize: size) // you can change your font size here
        let stringAttributes = [NSAttributedString.Key.font: font]
        let imageSize = nsString.size(withAttributes: stringAttributes)

        UIGraphicsBeginImageContextWithOptions(imageSize, false, 0) //  begin image context
        UIColor.clear.set() // clear background
        UIRectFill(CGRect(origin: CGPoint(), size: imageSize)) // set rect size
        nsString.draw(at: CGPoint.zero, withAttributes: stringAttributes) // draw text within rect
        let image = UIGraphicsGetImageFromCurrentImageContext() // create image from context
        UIGraphicsEndImageContext() //  end image context

        return image ?? UIImage()
    }
}

class ViewController: UIViewController {
    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var button: UIButton!
    @IBOutlet var textField: UITextField!
    @IBOutlet var slider: UISlider!
    @IBOutlet var switcher: UISwitch!
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Segment Control

        segmentControl.insertSegment(withTitle: "Third", at: 2, animated: false)

        // MARK: Label

        label.text = "UIKit app"
        label.font = label.font.withSize(30)
        label.textAlignment = .right
        label.numberOfLines = 2

        // MARK: slider

        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue

        let stringImage = "🇺🇦".textToImage(size: slider.frame.height)
        slider.setThumbImage(stringImage, for: .normal)
        
       

        // Do any additional setup after loading the view.
    }

    @IBAction func segmentControlAction(_ sender: Any) {
        switch segmentControl.selectedSegmentIndex {
        case let index where index == 0:
            label.text = "Chosen segment  \(segmentControl.titleForSegment(at: index)!)"
        case let index where index == 1:
            label.text = "Chosen segment  \(segmentControl.titleForSegment(at: index)!)"
        case let index where index == 2:
            label.text = "Chosen segment  \(segmentControl.titleForSegment(at: index)!)"
        default:
            break
        }
    }

    @IBAction func buttonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
        label.text = textField.text
    }

    @IBAction func sliderAction(_ sender: Any) {
        label.text = String(Int(slider.value))
    }
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = .full
        label.text = dateFormater.string(from: datePicker.date)
    }
    @IBAction func switcherAction(_ sender: Any) {
        datePicker.isHidden = !switcher.isOn
        button.isHidden = !switcher.isOn
        textField.isHidden = !switcher.isOn
        slider.isHidden = !switcher.isOn
        label.isHidden = !switcher.isOn
        segmentControl.isHidden = !switcher.isOn

        
    }
}
