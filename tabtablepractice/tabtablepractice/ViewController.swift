//
//  ViewController.swift
//  tabtablepractice
//
//  Created by Syed Shahrukh Haider on 02/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

protocol editdeleg {
    
    func editWindow (data: Student)
}



class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate , editdeleg {

    @IBOutlet weak var StudentList: UITableView!
    var studentArray = [Student]()
    
    
    func editWindow(data: Student) {
        self.studentArray.append(data)
        StudentList.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as! studenttableviewTableViewCell
        cell.NAME.text = self.studentArray[indexPath.row].name
        cell.AGE.text = self.studentArray[indexPath.row].age
        cell.COURSE.text = self.studentArray[indexPath.row].course
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.StudentList.delegate = self
        self.StudentList.dataSource = self
        
        let stu1 = Student(name: "shahrukh", age: "33", course: "IOS")
        let stu2 = Student(name: "sarim", age: "2", course: "android")
        let stu3 = Student(name: "shahryaar", age: "7", course: "machine Learning")
        
        studentArray = [stu1,stu2,stu3]
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectCell = self.studentArray[indexPath.row]
        self.performSegue(withIdentifier: "edit", sender: selectCell)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "edit"{
            let dest = segue.destination as! editViewController
            let entry = sender as? Student
//            dest.selectedStudent = entry as! editdeleg?
                dest.selectedStudent = self
        }
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
        studentArray.remove(at: indexPath.row)
        StudentList.reloadData()
        }
    }
    
}

