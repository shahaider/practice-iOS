//
//  EmployeeViewController.swift
//  tabtablepractice
//
//  Created by Syed Shahrukh Haider on 03/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class EmployeeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var employeeTable: UITableView!
    
//    var employeeArray = [String]()
    var employeeArray = [employee]()

    var emp2 = employee(name: "shahrukh", age: "33", desig: "ceo")
    var emp1 = employee(name: "akmal", age: "30", desig: "CDS")
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
    let employeecell = UITableViewCell()
    employeecell.textLabel?.text = employeeArray[indexPath.row].name
    return employeecell
    }
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
            
    employeeTable.dataSource = self
        employeeArray = [emp1,emp2]
            
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
        employeeArray.remove(at: indexPath.row)
        employeeTable.reloadData()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let employeeSelect = employeeArray[indexPath.row]
        performSegue(withIdentifier: "editEmployee", sender: employeeSelect)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "editEmployee"{
        let employeeDest = segue.destination as! editViewController
            let entry = sender as? employee
            employeeDest.EmployeeSelected = entry
        }
    }
    
}
