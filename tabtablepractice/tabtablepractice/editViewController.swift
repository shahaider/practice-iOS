//
//  editViewController.swift
//  tabtablepractice
//
//  Created by Syed Shahrukh Haider on 02/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class editViewController: UIViewController {

    
    var EmployeeSelected :employee?
//
//    
//    @IBAction func addButton(_ sender: Any) {
//        
//        dismiss(animated: true, completion: nil)
//        
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        print(self.selectedStudent?.name)
//        print(self.selectedStudent?.age)
//        print(self.selectedStudent?.course)
//        
//    }


    var selectedStudent : editdeleg?
    var enterValue = studenttableviewTableViewCell()

    func transfer(name: String,age: String, course: String) -> Student {
        let value = Student(name: name, age: age, course: course)
        return value
    }
    
    @IBAction func addButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
        self.selectedStudent?.editWindow(data: transfer(name: enterValue.NAME.text!, age: enterValue.AGE.text!, course: enterValue.COURSE.text!))
        
    }

}


