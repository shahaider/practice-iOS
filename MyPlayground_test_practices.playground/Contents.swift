//: Playground - noun: a place where people can play

//import UIKit

//var str = "Hello, playground"
//
//
//var abjkfs : String
//var djkngdoi : Double
//var Ifgnt : Int
//
//
//var x,y,z : Int
//
//
//var number:Array<Int> = []
//var array_num = [String]()
//var Array_1:[Float] = []
//
//
//
//
//var hel = "hello!"
//
//
//print ("\(hel )shahrukh")
//print (hel + " sarim")
//
//
///*:
// 
// COMMENT
// */
//
//var u8:UInt8
//
////u8 = 255
//
//
//
//
//var value:Int! =  nil
//
////value = 10
//
//if let chk = value
//{
//print (chk)
//}
//else {
//print ("nil value")
//}
//
//
//var a:Array<Int> = []
//var b:[Int] = [1,2,3,4]
//var c:[String] = [String]()
//var d = ["shahrukh","hiba","shahryaar","sarim","salaar"]
//
//a.append(10)
//a = [11,12,13,14]
//a.append(10)
//print (a)
//a.remove(at: 4)
//print(a)
//a.insert(10, at: 0)
//
//var e = a+b
//
//print(a.first!)
//print(a.count)
//print(a.contains(13))
//var index:Int
//    index = a.index(of: 12)!
//print (index)
//
//
//print(a.index(before: 5))
//
//b[0...3] = [100,200,300,400]
//
//
//for i in 0...10
//{
//    print (i)
//
//}
//
//
//for j in stride(from: 10, to: 0, by: -1)
//{
//    
//    print (j)
//    
//}
//
//for i in d.indices
// {
//    
//    print(i)
//    }
//
//
//var a_set:Set<Int> = []
//var b_set = Set<Int>()
//
//
//a_set.insert(1)
//print (a_set)
//a_set = [10,2,3,4,5]
//print(a_set)
//a_set.remove(10)
//print (a_set)
//b_set.isEmpty
//
//b_set = [100,10,20,2,1000]
//
//var uV = a_set.union(b_set)
//print (uV)
//
//var uI = b_set.intersection(a_set)
//print ("\(uI) intersection result")
//
//
//var uS = b_set.subtracting(a_set)
//print ("\(uS) Substract result")
//
//
//var sum = 1
//
//repeat{
//print ("hello \(sum)")
//    sum+=1
//
//}
//while sum<=10
//
//
//
//
//
//
//
//var fruit:Dictionary <Int,String>=[:]
//var pakFruit:Dictionary = ["Mango":"Sindh","Banana":"Punjab"]
//
//fruit[1] = "Mangoes"
//fruit[2] = "Bananas"
//fruit[3] = "Apples"
//
//pakFruit.updateValue("KPK", forKey: "Apple")
//print(pakFruit)
//
//pakFruit.removeValue(forKey: "Apple")
//print(pakFruit)
//
//for (k,v) in pakFruit{
//
//print(k + " = keys")
//    print(v + " = value")
//}
//
//
//print (a.index(of: 2))
//
//
//
//
////
////var addf:(Int,Int)->Int
////
////func add(a:Int, b:Int)-> Int{
////    
////    return (a+b)
////    
////}
////addf = add
//////print(addf(10,10))
////
////var abcd = addf(10,10)
////print (abcd)
//
//
//
//
//func add(a:Int,b:Int)->Int{
//    
//    return (a+b)
//}
//
//func sub(a:Int,b:Int)->Int{
//    
//    return (a-b)
//    
//}
//
//func mul(a:Int,b:Int)->Int{
//    return (a*b)
//    
//}
//
//func div(a:Int,b:Int)->Int{
//    return (a/b)
//    
//}
//
//
//func maths(firstfunc:(Int,Int)->Int, num1: Int, num2:Int )->Int{
//
//    
//return firstfunc (num1,num2)
//
//}
//
//var output = maths(firstfunc: add, num1: 2, num2: 3)
//
//print (output)
//
//
//
//
//func ID (v1:Int, action:String)->String{
//
//    func increment(a:Int)->Int{
//    return (a+10)
//    }
//    func decrement(a:Int)->Int{
//    return(a-10)
//    }
//    let IValue = increment(a: v1)
//    let DValue = decrement(a: v1)
//    
//    if action == "I"{
//    return String(IValue)
//    }
//    else if action == "D" {
//    return String(DValue)
//    }
//return ""
//}
//
//var Result = ID(v1: 20, action: "D")
//print (Result)
//
//
//
//let s = 10
//var t = 30
//
//let u = s * (t>29 ? 2 : 3)



//
//struct student{
//
//		var name : String
//		var age : Int
//		var grade : Int
//		var school: String
//		var marks : [Int]
//
//	}
//
//
//
//var shahrukh = student(name : "S.Shahrukh", age : 32, grade :  16, school : "KIS", marks : [90,95,79,93,80,95] )
//
//print(shahrukh.marks)
//var min = shahrukh.marks[0]
//var max : Int = 0
//
//for check in shahrukh.marks{
//
//
//	if check > max{
//
//		max = check
//	}
//
//	else if check < min {
//
//		min = check
//	}
//
//}
//print (max,min)



//var vowel = "p"
//
//switch vowel {
//case "a","e","i","o","u","A","E","I","O","U":
//    print("It's a vowel")
//default:
//    print("SORRY!!!")
//}
//
//var marks = 92
//
//switch marks {
//case (90...100):
//    print ("A+")
//    fallthrough
//case (80...89):
//    print ("A")
//case (70...79):
//    print ("B+")
//case (60...69):
//    print ("B")
//case (50...59):
//    print ("C")
//default:
//    print("String")
//}
//
//print ("🔴")


//struct student{
//    
//    var name : String
//    var age : Int
//    var grade : Int
//    var school: String
//    var marks : [Int]
//}
//
//var sarim:student? = nil
////var sarim:student? = student(name : "S.Sarim", age : 2, grade :  1, school : "BSS", marks : [90,95,79,93,80,95] )
//
//
//if let chk = sarim
//{
//    print (chk.name)
//}
//else {
//    
//    print ("NIL")
//}


//struct value{
//    
//    var num1: Int
//    var num2: Int
//    
//}
//
//func + (a:value,b:value) -> value
//{
//    return value(num1: (a.num1 + b.num1),num2: (a.num2 + b.num2))
//    
//}
//
//var first_value = value(num1: 10 ,num2: 20)
//var second_value = value(num1: 30 ,num2: 40)
//
//print(first_value + second_value)
//
//
//prefix operator %
//
//prefix func %(value: Double)->Double
//{
//    return ((value/20)*100)
//    
//}
//
//var percent = %18
//print (percent)

    
//enum months{
//case jan, feb
//}
//
//var year: months
//    year = months.jan
//
//switch year {
//case .jan:
//    print ("jan")
//default:
//    print("feb")
//}

enum number
{

    case 1.0


}

