//
//  ViewController.swift
//  iOS_Dev_Lab2
//
//  Created by user162693 on 2019-10-30.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var presentationTextArea: UITextView!
    @IBOutlet weak var experienceButton: UIButton!
    @IBOutlet weak var skillsButton: UIButton!
    
    override func viewDidLoad() {
        presentationTextArea.isEditable = false
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        experienceButton.layer.cornerRadius = 15
        skillsButton.layer.cornerRadius = 15
        
        experienceButton.layer.shadowOpacity = 0.2
        experienceButton.layer.shadowRadius = 8
        experienceButton.layer.shadowOffset.height = 5
        skillsButton.layer.shadowOpacity = 0.2
        skillsButton.layer.shadowRadius = 8
        skillsButton.layer.shadowOffset.height = 5
    }
    @IBAction func skillsButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillsSegue", sender: self)
    }
}


