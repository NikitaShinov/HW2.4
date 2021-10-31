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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUserName = loginTextField.text
    }
    
    @IBAction func loginRemainder(_ sender: UIButton) {
        let forgotLoginAlert = UIAlertController (title: "Forgot your login?", message: "It's \(user.userName)!", preferredStyle: .alert)
                let okLoginAction = UIAlertAction (title: "Got it!", style: .default, handler: nil)
        
        forgotLoginAlert.addAction(okLoginAction)
                present (forgotLoginAlert, animated: true, completion: nil)
    }
    
    @IBAction func passwordRemainder(_ sender: UIButton) {
        let forgotPWAlert = UIAlertController (title: "Forgot your password?", message: "It's \(user.password)!", preferredStyle: .alert)
                let okPWAction = UIAlertAction (title: "Got it!", style: .default, handler: nil)
                
                forgotPWAlert.addAction(okPWAction)
                present (forgotPWAlert, animated: true, completion: nil)
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            performSegue(withIdentifier: "logInSegue", sender: nil)
        }
        return true
    }
}

    
