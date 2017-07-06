//
//  ResultViewController.swift
//  rock_paper_scissor
//
//  Created by Syed Shahrukh Haider on 12/03/2017.
//  Copyright © 2017 Syed Shahrukh Haider. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    
    enum rps:String{
        
        case Rock = "rock"
        case Paper = "paper"
        case Scissor = "scissors"
        
        
        static func opponent() -> String {
            var shape = ["rock","paper","scissors"]
            let oppMove = Int(arc4random_uniform(3))
//            return (String(rps(rawValue:shape[oppMove])!))
            return  shape[oppMove]
            
        }
    }
    
    var userAction: String! = "scissors"
    var opponentAction : String! = rps.opponent()
    
    

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var status: UILabel!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }
    
    func displayResult(){
    
        var image : String
        var text : String
        let matchup = "\(userAction!)-\(opponentAction!)"
        
        
        switch (userAction!,opponentAction!) {
        case let (user, oppo) where user == oppo:
            text = "\(matchup): it's a tie"
            image = "tie"
        
           
        case ("rock", "scissors"), ("paper", "rock"), ("scissors", "paper"):
            text = "You win \(matchup)"
            image = "\(userAction!)-\(opponentAction!)"
           
           
        default:
            text = "You lose with \(matchup) :(."
            image = "\(opponentAction!)-\(userAction!)"
            
           
        }
        
        image = image.lowercased()
        resultImage.image = UIImage(named: image)
        status.text = text
    }
    
    @IBAction func againButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
