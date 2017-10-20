//
//  ViewController.swift
//  MyFirstProject
//
//  Created by anant awasthy on 10/20/17.
//  Copyright © 2017 anant awasthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var in_name: UITextField!
    @IBOutlet weak var in_password: UITextField!
    
    @IBOutlet weak var tv_password: UILabel!
    
    @IBOutlet weak var tv_name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

   
    
    
    @IBAction func loginTap(_ sender: Any) {
        if let name = in_name.text {
            tv_name.text = "Name : \(name) !"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

