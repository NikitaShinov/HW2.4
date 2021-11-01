//
//  CheckResumeViewController.swift
//  HW2.4
//
//  Created by Никита Шинов on 31.10.2021.
//

import UIKit

class CheckResumeViewController: UIViewController {
    
    var resume: Resume?

    @IBOutlet var jobTitle: UILabel!
    @IBOutlet var company: UILabel!
    @IBOutlet var experience: UILabel!
    @IBOutlet var grade: UILabel!
    @IBOutlet var direction: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let checkResume = resume else { return }
        
        jobTitle.text = checkResume.jobTitle
        company.text = checkResume.company
        experience.text = checkResume.jobExperience
        grade.text = checkResume.grade
        direction.text = checkResume.direction
        
        
        
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
