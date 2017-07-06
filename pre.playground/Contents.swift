////: Playground - noun: a place where people can play
//
//import UIKit
//
//
////
////
////
////// Variable Declares
////
////var str = "Hello World"
////
////var a : Int = 10
////
////
////var b : Bool = true
////
////var c : Double = 12.9
////
////var d : Character = "s"
////
////c = 13.09
////
////
////
////
////
////
////// Constants declare
////
////let A: Int = 200
////
////let B : String = " Syed ShahRukh Haider"
////
////let C : Bool = false
////
//////B = "Syed Shhahrukh Haider"   // Error = Constant value cannot change
////
////var e = B
////
////
////let E = C
////
////
////var pi : Double = 3.1492
////
////var msg : String = ( "pi value \(pi) style")
////
////var msg2 = "Pi value = " + String(pi) + " Style"
////
////
////
////
////
////// Checking
////
////var score = a == A
////
////var score1 = a % A
////
////var score2 = a != A
////
////var score3 = b && C
////
////
////
////// Array
////
////
////var array = [1,2,3,4,5]
////
////var array1 = [Int] ()   // Apple preferred
////
////var array2:[Int] = [6,7,8,9] // Apple preferred
////var array3:Array <Int> = []
////
////
////array.count
////array.index(after: 2)
////array1.append(10)
////array1[0]=20
////array.insert(20, at: 2)
////
////var addarray = array + array2
////
////var name:[String] = ["Shahryaar","Sarim","Salaar"]
////
////name.index(of: "Salaar")
////
////name.contains("Sarim")
////
////name.insert("Hiba", at: 0)
////
////name.remove(at: 0)
////
//////name[0...2] = ["SSY","SSR","SSL"]
////
////
////
//////for Name in name
//////{
//////print(name)
//////}
////
////for (i, Names) in name.enumerated()
////{
////print("\(i) \(name)")
////}
////
////for j in name.indices
////{
////    print(j)
////    
////}
////
////
////
////
////
//
//
//
//
//
//
//
//
//
//
//
//
//
//// Stride
//
//
////for x in stride(from: 10, to: 1, by: -1)
////    {
////
//////print(x)
////
////        
////}
////
////for y in stride(from: 10, through: 1, by: -1)
////
////{
////print (y)}
//
////var num:Set = [1,2,3,4,5,6]
////
////var randomNo = Set <Int>()
////randomNo.insert(10)
////randomNo.insert(20)
////randomNo.insert(30)
////print(randomNo)
////print(randomNo.count)
////print(randomNo.isEmpty)
////
////var evenNo:Set <Int> = [2,4,6,5,8]
////var oddNo:Set = [1,3,5,7]
////var myNo:Set = [1,2,3,4,5,6,7]
////
////// combine to SET
////print (evenNo.union(oddNo))
////
////var unionset:Set = evenNo.union(oddNo)
////
////// Intersection
////
////var inter = evenNo.intersection(oddNo)
////
////// Subtract(common element)
////
//var sub = evenNo.subtracting(oddNo)
//
//
//var sum = 1
//
//repeat {
//sum += 1
//    print (sum)
//}
//while sum <= 10
//
//
//// Dictionary
//
//var numDic = [1:"one",2:"two",3:"three"]
//
//var evenDic:Dictionary <Int,String> = [:]
//
//var fruit:Dictionary <String,Int> = ["mango":1]
//
//fruit["banana"] = 2
//fruit["pear"] = 1
//
////print (fruit)
//
//
//fruit.removeValue(forKey: "pear")
////print (fruit)
//
//fruit.updateValue(1, forKey: "pear")
////print(fruit)
//
//for (k,v) in fruit
//{
//print ("\(k), \(v)")
//}
//
//for key in fruit.values
//{
//print (key)
//}
//
//var arrayvalue = Set(fruit.values)
//
//print(arrayvalue)
//
//
//
//
//
//
//
//


/*:
********* Structure *********
 */

//struct Student
//{
//    var name: String
//    var age: Int
//    var school: String
//    var roll: Int
//}
//
//
//var a = Student(name: "ShahRukh", age: 33, school: "KIS", roll: 456 )
//
//print(a.name)
//
//
//
//
//
//var b = Student(name: "Salaar", age: 2, school: "BSS", roll: 12)
//
//print (b.name)

























