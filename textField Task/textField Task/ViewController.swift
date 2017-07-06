//
//  ViewController.swift
//  textField Task
//
//  Created by Syed Shahrukh Haider on 16/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var count: UILabel!
    
    let emojiD = emojiDelegate()
    let colorD = colorTextDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // DECLARING DELEGATES
        self.textField1.delegate = emojiD
        self.textField2.delegate = colorD
        self.textField3.delegate = self
        
        
        self.count.isHidden = true
    }

  
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        self.count.isHidden = (newText.length == 0)
        
        self.count.text = String(newText.length)
        
        return true
    }

}

