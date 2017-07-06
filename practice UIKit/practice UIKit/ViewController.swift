//
//  ViewController.swift
//  practice UIKit
//
//  Created by Syed Shahrukh Haider on 02/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    @IBAction func experiment() {
    
//********camera folder image********

    let newControllerView = UIImagePickerController()
        
        self.present(newControllerView, animated: true, completion: nil)
        
  //   ********IMAGE********
        let image = UIImage()
        
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
        
  //       ********ALert********

    
//        let controller = UIAlertController()
//        
//        controller.title = "Progress"
//        controller.message = "Success"
//        
//        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) { action  in
//            self.dismiss(animated:true, completion : nil)
//        }
//        controller.addAction(OKAction)
//        
//        present(controller, animated: true, completion: nil)
        
        
    }
    
  

}

