//
//  JUViewController.swift
//  iOS_Dev_Lab2
//
//  Created by user162693 on 2019-11-03.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import UIKit

class JUViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = false
        // Do any additional setup after loading the view.
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
