//
//  ViewController.swift
//  HW2.4
//
//  Created by Никита Шинов on 31.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = UserData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        if loginTextField.text == user.userName && passwordTextField.text == user.password {
            performSegue(withIdentifier: "logInSegue", sender: nil)
        } else {
            let warning = UIAlertController(title: "Authentification error", message: "Username or password is invalid", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
            warning.addAction(okAction)
            present(warning, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func loginRemainder(_ sender: UIButton) {
    }
    
    @IBAction func passwordRemainder(_ sender: UIButton) {
    }
    
}

