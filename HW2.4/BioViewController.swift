//
//  BioViewController.swift
//  HW2.4
//
//  Created by Никита Шинов on 31.10.2021.
//

import UIKit

class BioViewController: UIViewController {

    var user: User?
    
    @IBOutlet var name: UILabel!
    @IBOutlet var surname: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var height: UILabel!
    @IBOutlet var hairColour: UILabel!
    @IBOutlet var eyeColour: UILabel!
    @IBOutlet var bloodGroup: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let bio = user else { return }
        name.text = bio.name
        surname.text = bio.surname
        age.text = bio.age
        height.text = bio.height
        hairColour.text = bio.hairColour
        eyeColour.text = bio.eyeColour
        bloodGroup.text = bio.bloodGroup
        

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
