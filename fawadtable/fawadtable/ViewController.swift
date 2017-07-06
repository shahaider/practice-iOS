//
//  ViewController.swift
//  fawadtable
//
//  Created by Syed Shahrukh Haider on 02/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITabBarDelegate {

    @IBOutlet weak var table: UITableView!
    
    var abc = ["sakdklas", "sdjasdkja","jdfanfjka"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    
    return abc.count
    }
    
    
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        let cell = UITableViewCell()
        
        cell.textLabel?.text = abc[indexPath.row]
        cell.
        
        return cell
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        table.dataSource = self
    }

  


}

