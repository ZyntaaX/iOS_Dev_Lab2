//
//  experienceViewController.swift
//  iOS_Dev_Lab2
//
//  Created by user162693 on 2019-11-04.
//  Copyright © 2019 RasmusSvanberg. All rights reserved.
//

import UIKit

class ExperienceViewController: UITableViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    var sections = ["Work", "Education"]

    var projects = [
        [   //Work
            Work(image: #imageLiteral(resourceName: "kitron"), workName: "Kitron", workStartYear: "2017", workEndYear: "Ongoing", workDescription: "Worked as an electronics assembler, at Kardex Remstar warehouse-towers and the service department.\n\nBest job I've had this far!"),
            Work(image: #imageLiteral(resourceName: "isakssons"), workName: "Isakssons", workStartYear: "2016", workEndYear: "2017", workDescription: "Worked as a CNC-operator at Isakssons Metallindustri in Hok, sweden.\n\nI worked here for about half a year before quitting as this was not a job for me.")
        ],
        [   //Education
            Work(image: #imageLiteral(resourceName: "ju"), workName: "JU", workStartYear: "2018", workEndYear: "Ongoing", workDescription: "Currently doing my second year at Jönköping University studying Software development and mobile platforms.\n\nIt is very fun!"),
            Work(image: #imageLiteral(resourceName: "lbs"), workName: "LBS", workStartYear: "2013", workEndYear: "2016", workDescription: "Studied game development for 3 years, where we mainly learned C#, some Unity3D, Autodesk Maya etc.\n\nProud developer of the fighting game 'Bonkey-Monkey the Bitch Hunter!' (no official release was made).")
        ]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return projects[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath) as! ExperienceTableViewCell
        cell.workImage.image = projects[indexPath.section][indexPath.row].image
        cell.titleLabel.text = projects[indexPath.section][indexPath.row].workName
        cell.durationLabel.text = "\(projects[indexPath.section][indexPath.row].workStartYear) - \(projects[indexPath.section][indexPath.row].workEndYear)"
        
        cell.cellMainView.layer.cornerRadius = 10
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetailView", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ExperienceDetailViewController, let indexPath = sender as? IndexPath{
            destination.project = projects[indexPath.section][indexPath.row]
        }
    }
}
