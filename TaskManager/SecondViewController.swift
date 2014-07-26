//
//  SecondViewController.swift
//  TaskManager
//
//  Created by Joan on 7/26/14.
//  Copyright (c) 2014 Joan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // called when 'return' key pressed. return NO to ignore.
    func textFieldShouldReturn(textField: UITextField!) -> Bool {

        textField.resignFirstResponder()
        return true
    }

    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

    @IBOutlet var taskName: UITextField!
    @IBOutlet var taskDesc: UITextField!
    
    @IBAction func addTask(sender: UIButton) {
    
        taskMgr.addTask(taskName.text, desc: taskDesc.text)
        self.view.endEditing(true)      // end editing makes the keyboard disappear
        taskDesc.text = ""              // clear up the text boxes
        taskName.text = ""
        
        self.tabBarController.selectedIndex = 0
    }
    
}

