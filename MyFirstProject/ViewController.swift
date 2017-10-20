//
//  ViewController.swift
//  MyFirstProject
//
//  Created by anant awasthy on 10/20/17.
//  Copyright © 2017 anant awasthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    
    @IBOutlet weak var in_name: UITextField!
    @IBOutlet weak var in_password: UITextField!
    @IBOutlet weak var tv_password: UILabel!
    @IBOutlet weak var tv_name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        in_name.delegate = self
        in_password.delegate = self
    }

   @IBAction func loginTap(_ sender: Any) {
        if let name = in_name.text {
            tv_name.text = "Name : \(name) !"
            in_name.resignFirstResponder()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        in_name.resignFirstResponder()
        in_password.resignFirstResponder()
        return false
    }
    
}

