//
//  ViewController.swift
//  practise tableview
//
//  Created by Syed Shahrukh Haider on 05/01/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var nameTable: UITableView!
   
    var name = ["Shahrukh","Hiba","ShahRyaar","Sarim","Salaar"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
    
    return self.name.count
    
    }
  
    override func viewDidLoad() {
        self.nameTable.dataSource = self
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    var cell = UITableViewCell()
    
        cell.textLabel?.text = name[indexPath.row]
    
        return cell
    
    }
}

