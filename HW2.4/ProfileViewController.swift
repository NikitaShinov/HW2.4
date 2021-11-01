//
//  ProfileViewController.swift
//  HW2.4
//
//  Created by Никита Шинов on 31.10.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var user: User?

    @IBOutlet var welcomeText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userBio = user else { return }
        welcomeText.text = "Welcome, \(userBio.name)👋🏻"
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
