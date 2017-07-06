//
//  SecondViewController.swift
//  TODOLIST
//
//  Created by Syed Shahrukh Haider on 01/02/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit



class SecondViewController: UIViewController {

    @IBOutlet weak var enterData: UITextField!
    
    
    // initailizing delegate variable with TYPE protocol
    var delegate:delegProtocol?
    
    
    // return to previous page
    @IBAction func cancelButton(_ sender: Any) {
                self.dismiss(animated: true, completion: nil)
    }

    // return to previous page
    @IBAction func doneButton(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)


    // send DATA to previous page via delegate
    self.delegate?.sendMsg(data: enterData.text!)
    
    }
}
