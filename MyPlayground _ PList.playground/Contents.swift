//: Playground - noun: a place where people can play

import UIKit

import Foundation

//var str = "Hello, playground"
/*
 Example: -------PLIST-------
 
 */

//struct student{
//    var name : String
//    var age : Int
//    var school : String
//
//}
//
//
//var arrStudent = [student]()


//let Alienlist = Bundle.main.url(forResource: "ItemList", withExtension: "plist")
//
//
//let Parray = NSArray(contentsOf: Alienlist!) as! [[String:Any]]
//
//
//for item in Parray{
//    
//    var Name : String = ""
//    var Age : Int = 0
//    var SchoolName : String = ""
//    
//    if let name = item ["Name"] as? String{
//        
////        print (name)
//    
//        Name = name
//    }
//    
//        if let age = item ["BaseValue"] as? Int{
//            
////        print (age)
//        
//        Age = age
//            
//    }
//}




//        if let school = item ["School"] as? String{
//                
////        print (school)
//            
//        SchoolName = school
    

//      var stuObj = student(name: Name, age: Age, school: SchoolName)
//    arrStudent.append(stuObj)
//    
//    
//}
//for SN in arrStudent
//{
//    print (SN.name)
//    print (SN.age)
//    print (SN.school)
//    print ("___________________")
//}
//



/*
 Example: -------JSON-------
 
 */


//
//struct student{
//    var name : String
//    var age : Int
//    var school : String
//    
//}
//
//
//var arrStudent = [student]()
//
//
//
//
//
//var urlJSON = Bundle.main.url(forResource: "Students", withExtension: "json")
//
//var rawdata = try Data(contentsOf: urlJSON!)
//var stujson : [[String : Any]]!
//do{
//    
//stujson = try JSONSerialization.jsonObject(with: rawdata, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
//}
//    catch{
//    print ("ERROR")
//    }


// code testing


var Highestpt = 0
var WinnerPlanet = ""

let urlJSON = Bundle.main.url(forResource: "PlanetData", withExtension: "json")

let rawdata = try Data(contentsOf: urlJSON!)

var planetJson : [[String : Any]]!

do{
    
    planetJson = try JSONSerialization.jsonObject(with: rawdata, options: JSONSerialization.ReadingOptions()) as! [[String:Any]]
}
catch{
}

for item in planetJson{
    
    var AlienName = ""
    var Tpoint = 0
    var common = 0
    var uncommon = 0
    var rare = 0
    var legendary = 0
    
    
    
    //                    "Name": "Preshan",
    //                    "CommonItemsDetected": 1pt,
    //                    "UncommonItemsDetected": 2pt,
    //                    "RareItemsDetected": 3pt,
    //                    "LegendaryItemsDetected": 4pt
    
    
    if let name = item ["Name"] as? String{
        
        
        AlienName = name
    }
    
    if let Cvalue = item ["CommonItemsDetected"] as? Int{
        
        
        common = Cvalue
    }
    if let UCvalue = item ["UncommonItemsDetected"] as? Int{
        
        
        uncommon = UCvalue
    }
    if let Rvalue = item ["RareItemsDetected"] as? Int{
        
        
        rare = Rvalue
    }
    if let Lvalue = item ["LegendaryItemsDetectede"] as? Int{
        
        
        legendary = Lvalue
    }
    
    
    Tpoint = (legendary * 4) + (rare * 3) + (uncommon * 2) + (common * 1)
    
    if Tpoint > Highestpt{
        
        Highestpt = Tpoint
        WinnerPlanet = AlienName
        
    }

}

print (WinnerPlanet + " \(Highestpt)")
