//: Playground - noun: a place where people can play

import UIKit


class ViewCOntroller: UIViewController{
//@IBOutlet weak var colourView:UIView!
//@IBOutlet weak var redControl:UISwitch!
//@IBOutlet weak var greenControl:UISwitch!
//@IBOutlet weak var blueControl:UISwitch!
//
//
//@IBAction func changeColor (_ sender: AnyObject){
//
//    let r : CGFloat = self.redControl.isOn ? 1 : 0
//    let g : CGFloat = self.greenControl.isOn ? 1 : 0
//    let b : CGFloat = self.blueControl.isOn ? 1 : 0
//    
//    
//    colourView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
//    }

    @IBOutlet weak var colourView:UIView!
    @IBOutlet weak var redControl:UISlider!
    @IBOutlet weak var greenControl:UISlider!
    @IBOutlet weak var blueControl:UISlider!
    
    
    
    @IBAction func changeColor(_ Sender: AnyObject){
    
        let r : CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
        
        colourView.backgroundColor = UIColor(red: r,green: g, blue: b,alpha:1)
    
    
    }
    


}




