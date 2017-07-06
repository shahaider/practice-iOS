//
//  ViewController.swift
//  cardviewTable
//
//  Created by Syed Shahrukh Haider on 06/07/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    var content = ["Shahrukh","Hiba","Shahryaar","Sarim","Salaar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table.delegate = self
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return content.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellView", for: indexPath) as! customTableViewCell
        
        cell.label.text = content[indexPath.row]
        
        return cell
        
        
        
    }


}

