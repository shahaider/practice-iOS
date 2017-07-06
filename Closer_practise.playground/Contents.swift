//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 
 
// closure expression Syntax:
// 
// {(parameter)-> RETURN_TYPE in
// 
//        some code
// 
// }
// 
// */
//
//
////no parameter or return-type
//
//var npr: ()->() = {
//print("shahrukh")
//}
//
//npr()
//
//// no parameter but with return
//
//var npbr: ()-> String = {
//
//    return "shahryaar"
//}
//
//npbr()
//
////one parameter & return
//
//var opor : (String) -> String = { (name : String)-> String in
//
//    return "hi " + name
//}
//
//opor("Hiba")
//
//
//// multiple parameter & one return
//
//var mpor : (String, String)->String = {(first : String,last : String) -> String in
//    
//    return first + " " + last
//
//}
//
//mpor ("Sarim", "Haider")
//
//// one parameter with multiple return 
//
//var opmr : ([Int])->([Int],[Int]) = { (numbers : [Int]) -> ([Int],[Int]) in
//    
//    var evenN = [Int]()
//    var oddN = [Int]()
//
//    for loop in numbers{
//     
//        loop % 2 == 0 ? evenN.append(loop) : oddN.append(loop)
//
//    }
//return (evenN,oddN)
//}
//
//opmr([1,2,3,4,5,6,7,8,9,10])
//
//
//
//
///*
// 
// 
// INFERRED TYPE FOR PARAMETER & RETURN (*****ABOVE EXAMPLE****)
//
// 
// */
//
////no parameter or return-type
//
//var inpr = {
//print("inferred: Shahrukh")
//}
//
//inpr()
//
//
//
//// no parameter but with return
//
//var inpbr = {
//
//return ("")
//}
//
//inpbr()
//
//
//
////one parameter & return
//
//var iopor = { (name: String) -> String in
//
//    return "HI!" + name
//
//}
//
//iopor ("Salaar")
//
//// multiple parameter & one return
//
//var impor = { (first : String, last : String) -> String in
//
//return first + " " + last
//}
//
//impor("mazahir", "haider")
//
//// one parameter with multiple return
//
//var iopmr = { (numbers:[Int]) -> ([Int],[Int]) in
//    var evenN = [Int]()
//    var oddN = [Int]()
//    
//    for loop in numbers{
//        
//        loop % 2 == 0 ? evenN.append(loop) : oddN.append(loop)
//        
//    }
//    return (evenN,oddN)
//}
//
//iopmr([11,12,13,14,15,16,17,18,19,20])




//sorting

var numberArray = [1213,2342,5435,6265,4245,3211]

var numberSort = numberArray.sorted { $0 < $1}

numberSort

func sorting (a:Int, b:Int) -> Bool{
return a > b
}


var NS = numberArray.sorted(by: sorting)



//Map

var numberMap = numberArray.map({(a: Int) -> String in

    return "\(a)"
})

numberMap


//Filter

var numberFilter = numberArray.filter({(a : Int) -> Bool in
    
    return a < 3500


})

numberFilter


//reduce

func add (a: Int , b: Int)-> Int {
var total = a
let next = b
    
    total += next
return total
}


var numberReduce = numberArray.reduce(0, add)
//
//
//// closure with Struct & []
//struct test{
//    var name : String
//    var age : Int
//    var mark : Int
//}
//
//var def = [test]()
//
//def = [test(name: "noman", age: 22, mark: 90), test(name: "absher", age: 21, mark: 80),test(name: "zesshan", age: 26, mark: 85), test(name: "sami", age: 20, mark: 95)]
//
//print(def)
//
//var defMap = def.map({(a: test) -> Int in
//return a.age
//})
//
//defMap
//
//
//var defFilter = def.filter({ (b : test) -> Bool in
//    return b.mark > 84
//
//})
//
//print(defFilter)
//
//var defReduce = def.reduce(3, {(total: Int, next: test)-> Int in
//    
//    var Total = total
//    Total += next.mark
//    return Total
//
//
//
//})
//
//print(defReduce)


//var multiArray = [[91,2,3,4,5],[6,7,8,9,10]]
//
//var red = multiArray.reduce(0) { (sum : Int, NEXT:Array<Int>) -> Int in
//    var result = sum
//    for i in NEXT{
//    result += i
//    }
//    return result
//}
//print (red)
//
//struct Student{
//    var name:String
//    var marks:[Int] = []
//}
//var StuArr = [Student(name: "ali", marks: [99,88,88,45,99]),Student(name: "noman", marks: [22,33,43,45,0]),Student(name: "waqar", marks: [22,33,77,45,33])]
//
//let filArr = StuArr.filter({($0.marks.reduce(0, { $0 + $1 })*100)/500 > 80 ? true :  false})
//print(filArr)
//
//var red = StuArr.reduce(0) { (total : Int, NValue : Student) -> Int in
//    
//    var innerarray = NValue.marks.reduce(0, { (sum : Int, nextValue: Int) -> Int in
//        var TOTAL = sum
//        
//        return TOTAL
//    })
//    
//    return innerarray
//}


