//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//struct dimensionTv
//{
//    var width : Int
//    var height : Int
//}


class lcdTv{
    var resolution : Int
    var usb : Bool
    var hdmi : Bool
    var width : Int
    var height : Int
    var dimension : Int{
        set {
        self.width = newValue
        self.height = newValue
        self.size(width: self.width, height: self.height)
        }
        get{
        return self.dimension
        }
    
    }
    
    private var company : [String] = ["Samsung", "TCL", "Sony"]
    
    // initialize CLASS
    
    init(RESOLUTION : Int , USB : Bool, HDMI : Bool, WIDTH:Int, HEIGHT:Int)
    {
        self.resolution = RESOLUTION
        self.usb = USB
        self.hdmi = HDMI
        self.width = WIDTH
        self.height = HEIGHT
       
    }
    
    private func bestTV(RESOLUTION : Int , USB : Bool, HDMI : Bool)
    {
        self.resolution = RESOLUTION
        self.usb = USB
        self.hdmi = HDMI
        
        if USB && HDMI {
        print (company[0])
        }
        
        else if USB || HDMI
        {
            print (company[2])
            
        }
        
        else{
        print (company[1])
        }
    }
    
    func size (width:Int,height:Int){
    var a = width
    var b = height
    print (a*b)
    }

}


var me = lcdTv(RESOLUTION: 2, USB: true, HDMI: false, WIDTH: 2, HEIGHT: 5)

me.size(width: 5, height: 2)
print(me.dimension)

