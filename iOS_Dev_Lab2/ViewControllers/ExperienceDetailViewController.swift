//
//  ExperienceDetailViewController.swift
//  iOS_Dev_Lab2
//
//  Created by user162693 on 2019-11-05.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController {

    @IBOutlet weak var workImage: UIImageView!
    @IBOutlet weak var workTitle: UILabel!
    @IBOutlet weak var workDuration: UILabel!
    @IBOutlet weak var detailTextView: UITextView!
    
    var project: Work?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        detailTextView.isEditable = false
        
        self.title = project?.workName
        workTitle.text = project?.workName
        workDuration.text = project!.workStartYear + " - " + project!.workEndYear
        workImage.image = project?.image
        detailTextView.text = project?.workDescription
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
