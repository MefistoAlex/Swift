//
//  ViewController.swift
//  Login App
//
//  Created by Alexandr Mefisto on 26.07.2022.
//

import SwiftUI
import UIKit

class ViewController: UIViewController {
    //MARK: Privates
    private var alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
    
    @IBOutlet private weak var userName: UITextField!
    @IBOutlet private weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    
    @IBAction private func forgetPassword() {
        alert.title = "You forget password!"
        alert.message = "Mefisto"
        present(alert, animated: true)
    }

    @IBAction private func forgetUserName() {
        alert.title = "You forget user name!"
        alert.message = "Alex"
        present(alert, animated: true)
    }
    
    @IBAction private func logIn() {
        guard userName.text == "Alex" && password.text == "Mefisto" else {
            alert.title = "Incorrect Username or Password"
            alert.message = "Press \"Forgot password\" to help"
            present(alert, animated: true)
            return
        }
        performSegue(withIdentifier: "logined", sender: self)
    }
}
