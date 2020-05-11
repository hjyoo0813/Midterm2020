//
//  FirstViewController.swift
//  Todo_mid
//
//  Created by SWUCOMPUTER on 5/1/20.
//  Copyright © 2020 SWUCOMPUTER. All rights reserved.
//

import UIKit
var list = [""]
class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    //outlet
    @IBOutlet var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (list.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list.remove(at:indexPath.row)
            myTableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated:Bool)
    {
        myTableView.reloadData()
    }
    
    


    
    
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
}

