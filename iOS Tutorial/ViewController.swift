//
//  ViewController.swift
//  iOS Tutorial
//
//  Created by Yash Kulshrestha on 10/1/16.
//  Copyright © 2016 Yash Kulshrestha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func enableDarkMode(_ sender: AnyObject) {
        view.backgroundColor = UIColor.darkGray;
        
        let childViews = view.subviews[0].subviews
        
        for view in childViews {
            if view is UILabel {
                let label = view as! UILabel
                label.textColor = UIColor.lightGray
            }
        }
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

