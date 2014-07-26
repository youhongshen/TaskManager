//
//  TaskManager.swift
//  TaskManager
//
//  Created by Joan on 7/26/14.
//  Copyright (c) 2014 Joan. All rights reserved.
//

import UIKit

// anything outside of a class is of global scope
var taskMgr : TaskManager = TaskManager()

struct task {
    var name = "Un-Named"
    var desc = "Un-Described"
}

class TaskManager : NSObject {
    
    var tasks : [task] = [task]()
    
    func addTask(name: String, desc: String) {
        tasks.append(task(name: name, desc: desc))
    }
    
}
