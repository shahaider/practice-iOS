//
//  ViewController.swift
//  counter
//
//  Created by Syed Shahrukh Haider on 30/12/2016.
//  Copyright © 2016 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var label: UILabel!
    var count = 0

   
    @IBAction func count(_ sender: Any) {
        
        print("PRESSED")
        count += 1
        self.label.text = "\(self.count)"
    }
    
}

