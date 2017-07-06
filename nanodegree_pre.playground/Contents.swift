//: Playground - noun: a place where people can play

import UIKit


struct Student{
    let name : String
    let roll : Int
    var grade : Int
    var house : Fourhouse
    
}

struct Fourhouse {
    var name : String
    var type : String
    var color : String
}


var blue = Fourhouse(name : "BLUE HOUSE", type : "HYPER", color : "BLUE COLOUR")


var shahryaar = Student(name: "Syed Shahryaar Haider", roll: 1, grade: 2, house: blue)


//print(shahryaar.house.color)
//
//
//
//shahryaar.house.color = "blue color"

var sarim = Student(name: "Syed Sarim Haider", roll: 1, grade: 2, house: blue)


//print(shahryaar.house.color)
//
//
//print(sarim.house.color)


//func sayhello (student : Student){
//print ("Hello \(student)")
//}


func check(name : Student) -> Bool
{
if  name.name == "sarim"
{
return true
}
    
else{
return false
    }
    
}

var First = check(name: sarim)

print (First)






