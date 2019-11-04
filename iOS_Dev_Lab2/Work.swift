//
//  Work.swift
//  iOS_Dev_Lab2
//
//  Created by Rasmus Svanberg on 2019-11-04.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import Foundation

class Work {
    let imageName: String
    let workName: String
    let workStartYear: Int
    let workEndYear: Int
    
    init(imageName: String = "default", workName: String, workStartYear: Int, workEndYear: Int) {
        self.imageName = imageName
        self.workName = workName
        self.workStartYear = workStartYear
        self.workEndYear = workEndYear
    }

}
