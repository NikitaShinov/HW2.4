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
    
    var user: User?
    var resume: Resume?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = User()
        user?.setupUser()
        resume = Resume()
        
        loginTextField.text = user?.login
        passwordTextField.text = user?.password
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if loginTextField.text == user?.login && passwordTextField.text == user?.password {
            performSegue(withIdentifier: "logInSegue", sender: UIButton.self)
        } else {
            let warning = UIAlertController(title: "Authentification error", message: "Username or password is invalid", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Got it", style: .default, handler: nil)
            warning.addAction(okAction)
            present(warning, animated: true, completion: nil)
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        guard let tabBarControllers = tabBarController.viewControllers else { return }
        
        for controller in tabBarControllers {
            if let profileVC = controller as? ProfileViewController {
                profileVC.user = user
            } else if let bioVC = controller as? BioViewController {
                bioVC.user = user
            } else if let navigationControllerVC = controller as? UINavigationController {
                let resumeVC = navigationControllerVC.topViewController as! ResumeViewController
                resumeVC.resume = resume
            }
        }
    }
    
    @IBAction func loginRemainder(_ sender: UIButton) {
        
        guard let userLogin = user?.login else { return }
        let forgotLoginAlert = UIAlertController (title: "Forgot your login?", message: "It's \(userLogin)!", preferredStyle: .alert)
                let okLoginAction = UIAlertAction (title: "Got it!", style: .default, handler: nil)
        
        forgotLoginAlert.addAction(okLoginAction)
                present (forgotLoginAlert, animated: true, completion: nil)
    }
    
    @IBAction func passwordRemainder(_ sender: UIButton) {
        guard let password = user?.password else { return }
        let forgotPWAlert = UIAlertController (title: "Forgot your password?", message: "It's \(password)!", preferredStyle: .alert)
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

    
