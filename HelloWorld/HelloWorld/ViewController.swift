//
//  ViewController.swift
//  HelloWorld
//
//  Created by Alexandr Mefisto on 14.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var helloWorldLabel: UILabel!

    @IBOutlet var showTextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.isHidden = true
        showTextButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }


    @IBAction func makeButtonActoin() {
        if helloWorldLabel.isHidden {
            helloWorldLabel.isHidden = false
            showTextButton.setTitle("Hide text", for: .normal)
        } else {
            helloWorldLabel.isHidden = true
            showTextButton.setTitle("Show text", for: .normal)
        }
       
    }
    
}
