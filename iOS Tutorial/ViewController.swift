//
//  ViewController.swift
//  iOS Tutorial
//
//  Created by Yash Kulshrestha on 10/1/16.
//  Copyright © 2016 Yash Kulshrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dailyTasks = [
        Task(name: "Check all windows", type: .Daily, completed: false, lastCompleted: nil),
        Task(name: "Check all doors", type: .Daily, completed: false, lastCompleted: nil),
        Task(name: "If it's freezing, check the water pipes outside", type: .Daily, completed: false, lastCompleted: nil),
        Task(name: "Check the mailbox at the end of the lane", type: .Daily, completed: false, lastCompleted: nil),
        Task(name: "Empty trash containers", type: .Daily, completed: false, lastCompleted: nil),
        Task(name: "Check temperature in public areas", type: .Daily, completed: false, lastCompleted: nil)
    ]
    
    var weeklyTasks = [
        Task(name: "Check inside all unoccupied cabins", type: .Weekly, completed: false, lastCompleted: nil),
        Task(name: "Run all faucets for 30 seconds", type: .Weekly, completed: false, lastCompleted: nil),
        Task(name: "Walk the perimiter of the property", type: .Weekly, completed: false, lastCompleted: nil),
        Task(name: "Arrange for dumpster pickup", type: .Weekly, completed: false, lastCompleted: nil)
    ]
    
    var biweeklyTasks = [
        Task(name: "Run test on security alarm", type: .Biweekly, completed: false, lastCompleted: nil),
        Task(name: "Check all motion detectors", type: .Biweekly, completed: false, lastCompleted: nil),
        Task(name: "Test smoke alarms", type: .Biweekly, completed: false, lastCompleted: nil),
    ]
    
    @IBOutlet weak var taskTableView: UITableView!
    
    @IBAction func resetTableView(_ sender: AnyObject) {
        for i in 0..<dailyTasks.count {
            dailyTasks[i].completed = false
        }
        for i in 0..<weeklyTasks.count {
            weeklyTasks[i].completed = false
        }
        for i in 0..<biweeklyTasks.count {
            biweeklyTasks[i].completed = false
        }
        
        taskTableView.reloadData()
    }
    
    @IBAction func toggleDarkMode(_ sender: AnyObject) {
        let darkModeSwitch = sender as! UISwitch
        
        if darkModeSwitch.isOn {
            view.backgroundColor = UIColor.darkGray
        }
        else {
            view.backgroundColor = UIColor.white
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // this seems like a side effect
        tableView.backgroundColor = UIColor.clear
        
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
        
        var currentTask: Task!
        
        switch indexPath.section {
        case 0:
            currentTask = dailyTasks[indexPath.row]
        case 1:
            currentTask = weeklyTasks[indexPath.row]
        case 2:
            currentTask = biweeklyTasks[indexPath.row]
        default:
            break
        }
        
        cell.textLabel!.text = currentTask.name
        cell.backgroundColor = UIColor.clear
        
        if currentTask.completed {
            cell.textLabel?.textColor = UIColor.lightGray
            cell.accessoryType = .checkmark
        }
        else {
            cell.textLabel?.textColor = UIColor.black
            cell.accessoryType = .none
        }
        
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
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = UIColor.gray
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let action = UITableViewRowAction(style: .default, title: "Complete", handler: {
            action, indexPath in
            
            switch indexPath.section {
            case 0:
                self.dailyTasks[indexPath.row].completed = true
            case 1:
                self.weeklyTasks[indexPath.row].completed = true
            case 2:
                self.biweeklyTasks[indexPath.row].completed = true
            default:
                break
            }
            
            tableView.reloadData()
            
            tableView.isEditing = false
        })
        
        return [action]
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

