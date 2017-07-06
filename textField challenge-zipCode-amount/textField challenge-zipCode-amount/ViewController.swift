//
//  ViewController.swift
//  textField challenge-zipCode-amount
//
//  Created by Syed Shahrukh Haider on 19/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var editingTextField: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    
    let zipDelegate = zipCodeDelegate()
    let AmountDelegate = amountDelegate()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        self.zipCodeTextField.delegate = self.zipDelegate
        self.amountTextField.delegate = self.AmountDelegate
        self.editingTextField.delegate = self
        
        self.editingSwitch.setOn(false, animated: false)
    
    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return editingSwitch.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       editingTextField.resignFirstResponder()
        
        return true
    }
   
    @IBAction func editAction(_ sender: Any) {
        
        if !editingSwitch.isOn  {
        
        editingTextField.resignFirstResponder()
        }
    }


}

