//: Playground - noun: a place where people can play

import UIKit
import Foundation


var str = "Hello, playground"

var Maze_data = Bundle.main.url(forResource: "Maze1", withExtension: "plist")

var Maze_Dic = NSDictionary(contentsOf: Maze_data!) as! [String:Any]



for item1 in Maze_Dic{
   
    if let info = item1 as? [String: Int]
    {
        
        print (info.keys)
        print (info.values)
        
}
    

}
