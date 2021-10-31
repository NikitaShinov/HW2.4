//
//  WelcomeViewController.swift
//  HW2.4
//
//  Created by Никита Шинов on 31.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    var welcomeUserName: String?
    let loggedInUser = Biography()

    @IBOutlet var welcomeText: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeText.text = "Welcome, \(loggedInUser.name) \(loggedInUser.surname) 👋🏻"
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
