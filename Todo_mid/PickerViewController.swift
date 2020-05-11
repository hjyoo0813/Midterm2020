//
//  PickerViewController.swift
//  Todo_mid
//
//  Created by SWUCOMPUTER on 5/1/20.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate ,UIPickerViewDataSource{
    //1
    @IBOutlet var picker: UIPickerView!
    @IBOutlet var name: UILabel!
    @IBOutlet var imageView: UIImageView!
    //2
    @IBOutlet var button: UIButton!
    // food 음식 나열
     var Array = ["치킨","한식","샌드위치","피자"]
    
    override func viewDidLoad() {
        picker.isHidden = true
        picker.delegate = self
        picker.dataSource = self
        super.viewDidLoad()
    }

    //button selected
        
        @IBAction func selectPressed(_ sender: UIButton) {
            if picker.isHidden {
                picker.isHidden = false
            }
            
    }

    //1
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    //2
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
    return Array.count
    }
    //3
    func pickerView(_ pickerView:     UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return Array[row]
    }
    //4
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        button.setTitle(Array[row], for: .normal)
        picker.isHidden = true
    }
}
    


  
