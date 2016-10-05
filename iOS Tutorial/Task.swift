//
//  Task.swift
//  iOS Tutorial
//
//  Created by Yash Kulshrestha on 10/5/16.
//  Copyright © 2016 Yash Kulshrestha. All rights reserved.
//

import Foundation

enum TaskType {
    case Daily, Weekly, Biweekly, Monthly
}

struct Task {
    var name : String
    var type : TaskType
    var completed : Bool
    var lastCompleted : NSDate?
}
