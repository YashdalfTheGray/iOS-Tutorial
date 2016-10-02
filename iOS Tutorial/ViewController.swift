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

