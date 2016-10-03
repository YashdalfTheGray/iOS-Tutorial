//
//  ViewController.swift
//  iOS Tutorial
//
//  Created by Yash Kulshrestha on 10/1/16.
//  Copyright © 2016 Yash Kulshrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let dailyTasks = [
        "Check all windows",
        "Check all doors",
        "If it's freezing, check the water pipes outside",
        "Check the mailbox at the end of the lane",
        "Empty trash containers",
        "Check temperature in public areas"
    ]
    
    let weeklyTasks = [
        "Check inside all unoccupied cabins",
        "Run all faucets for 30 seconds",
        "Walk the perimiter of the property",
        "Arrange for dumpster pickup"
    ]
    
    let biweeklyTasks = [
        "Run test on security alarm",
        "Check all motion detectors",
        "Test smoke alarms"
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return biweeklyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        var currentTask: String
        switch indexPath.section {
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = biweeklyTasks[indexPath.row]
        default:
            currentTask = ""
        }
        
        cell.textLabel!.text = currentTask
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Biweekly Tasks"
        default:
            return "This should not be here"
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you Selected row \(indexPath.row) in section \(indexPath.section)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

