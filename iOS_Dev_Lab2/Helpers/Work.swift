//
//  Work.swift
//  iOS_Dev_Lab2
//
//  Created by user162693 on 2019-11-05.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import UIKit

class Work {
    let image: UIImage
    let workName: String
    let workStartYear: String
    let workEndYear: String
    let workDescription: String
    
    init(image: UIImage, workName: String, workStartYear: String, workEndYear: String, workDescription: String = "No Description") {
        self.image = image
        self.workName = workName
        self.workStartYear = workStartYear
        self.workEndYear = workEndYear
        self.workDescription = workDescription
    }
}
