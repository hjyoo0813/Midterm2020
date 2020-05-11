//
//  SecondViewController.swift
//  Todo_mid
//
//  Created by SWUCOMPUTER on 5/1/20.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    @IBOutlet var input: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var labelInfo: UILabel!
    
    @IBAction func addItem(_ sender: AnyObject) {
        if (input.text != ""){
            list.append(input.text!)
            input.text = ""
        }
        
    }
    func changed(){
          let dateformatter = DateFormatter()
       dateformatter.dateStyle = .medium
          dateformatter.timeStyle = .medium
    }

    @IBAction func getDateTime(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
        self.labelInfo.text = dateFormatter.string(from: self.datePicker.date)
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



