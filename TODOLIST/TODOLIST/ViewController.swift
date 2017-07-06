//
//  ViewController.swift
//  TODOLIST
//
//  Created by Syed Shahrukh Haider on 01/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

// create protocol to  implement delegate operation

protocol delegProtocol {
    func sendMsg(data: String)
}


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, delegProtocol {

   @IBOutlet weak var TDList: UITableView!
   
 var vcArray = [String]()
    
    // func to recieve data from ANY other viweController
    func sendMsg (data : String){
    self.vcArray.append(data)
    self.TDList.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vcArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = vcArray[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // display cell info on table
        TDList.dataSource = self
    }

   
    @IBAction func addButton(_ sender: Any) {
        
        // Action to GO to Second ViewCOntroller page
        self.performSegue(withIdentifier: "secondPage", sender: nil)
    }
    
    // preparing Second ViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondPage"{
        let dest = segue.destination as? SecondViewController
            dest?.delegate = self
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
        self.vcArray.remove(at: indexPath.row)
        self.TDList.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectCell = self.vcArray[indexPath.row]
        self.performSegue(withIdentifier: "secondPage", sender: nil)
    }
    
    

}

