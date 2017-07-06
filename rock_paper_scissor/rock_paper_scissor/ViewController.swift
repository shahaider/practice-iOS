//
//  ViewController.swift
//  rock_paper_scissor
//
//  Created by Syed Shahrukh Haider on 12/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    var choose : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func rockAction(_ sender: UIButton) {
        choose = "rock"
//        performSegue(withIdentifier: "RPS-segue", sender: nil)
let controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        controller.userAction = self.choose
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func paperAction(_ sender: Any) {
        choose = "paper"

         performSegue(withIdentifier: "RPS-segue", sender: nil)
    }
    
    @IBAction func scissorAction(_ sender: Any) {
        
        choose = "scissors"

//         performSegue(withIdentifier: "RPS-segue", sender: nil)
    }
  
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RPS-segue"{
        
            let vc = segue.destination as! ResultViewController
            
            vc.userAction = self.choose
        
        
        }
    }

}

