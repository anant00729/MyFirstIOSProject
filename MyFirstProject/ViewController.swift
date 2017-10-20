//
//  ViewController.swift
//  MyFirstProject
//
//  Created by anant awasthy on 10/20/17.
//  Copyright © 2017 anant awasthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    
    @IBOutlet weak var in_task: UITextField!
    @IBOutlet weak var tv_show_tasks: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

   
    @IBAction func btn_task_to_do(_ sender: Any) {
        if let task = in_task.text{
            if task == ""{
                return
            }
            tv_show_tasks.text.append("\(task)\n")
            in_task.text = ""
            in_task.resignFirstResponder()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
}

