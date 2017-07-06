//: Playground - noun: a place where people can play

import UIKit

//
/*: 
 
 Program:

********************************************
 
 */

func sayHello(name : String) -> String
{
    let greeting = "Hello " + name

    return greeting
}


func sayHelloagain(name : String) -> String
{
    let greeting = "Hello Again " + name
    return greeting
}


// selecting Function

func say_hello(N: String, isgreet: Bool) -> String
{
    if isgreet == false  {
        return sayHelloagain(name: N)  //true
    }
    else {
        return sayHello(name: N)  //false
        
    }
}
//
//
//
//
//
//
//
print (say_hello(N: "shahrukh", isgreet: true))




func SH (name : String) -> String
{
    let greeting = "Hello " + name + " !"
    return greeting
}


var call = SH(name: "fawad")

print (call)

//
//
//
//
//
//
///* Program:
// 
// ********************************************
// 
// */
//
//
//
//func minmax (value: [Int]) -> (min:Int,max:Int)
//{
//  var Min = value [0]
//  var Max = value [0]
////
//    for item in value[1..<(value.count)]
//    {
//        if item > Max
//        {
//        Max = item
//        }
//        
//        else if item < Min
//        {
//            Min = item
//        }
//
//    }
//    
//let MINMAX = (Min,Max)
//    return (MINMAX)
//
//}
//
//
//
//
//let MM = minmax(value: [1,20,3,4,5])
//
//print (MM)




//
///* Program:
// 
//  ********************Function with Variadic parameter************************
// 
// */
//
//func withVP (a: String...)
//{
//for i in a
//{
//   i
//    }
//    
//}
//
//withVP(a: "shahrukh","Hiba", "ShahRyaar", "Sarim", "Salaar" )
//
//
//
//
/*
 Function Signature
 */

//
//func addition (a : Int, b: Int) -> String
//{
//return "\(a+b)"
//}
//
//var addfunc: (Int, Int) -> String = addition    // signature
//
////var vvv = addfunc(2,2)
//
//print(vvv)

//
//
//
//
///* Program:
// 
// 
// *************************FUNCTION IN PARAMETER*******************************
//    
// */



//func addition (a:Int, b:Int ) -> Int
//{
//    
//let valueA = a
//let valueB = b
//let ans = valueA + valueB
//    return (ans)
//}
//
//
//func substraction (a:Int, b:Int ) -> Int
//{
//    
//    let valueA = a
//    let valueB = b
//    let ans = valueA - valueB
//    return (ans)
//}
//
//
//
//func withFIP(x:Int, y:Int, v:Int, w:Int,  anyfunc:(Int, Int) -> Int, anotherfunc:(Int, Int)-> Int) -> String
//{
//    let add = anyfunc(x,y)
//    let sub = anotherfunc(v,w)
// 
//    return "Addition: \(add) Subtraction: \(sub)"
//}
//
//
//
//var chk = withFIP(x:50, y:10, v:200, w:100, anyfunc: addition, anotherfunc: substraction)
//print (chk)


//






//


/* Program:
 
 *************************Function NESTED*************************************
 
 */

//
//func funcN(num1:Int, num2:Int ) -> (Int,Int)
//{
//    
//            func increment (i:Int) -> Int
//    {
//return (i+10)
//}
//
//            func decrement (j:Int) -> Int
//    {
//        return (j+10)
//}
//    
//    
//    
//    let increasevalue = increment(i:num1)
//    let decreasevalue = decrement(j: num2)
//    
//    return(increasevalue, decreasevalue)
//
//}
//
//
//var answer = funcN(num1: 50, num2: 70)
//
//print(answer)


/*
 ********************INOUT*************************
 */

func increment (value:inout Int)
{

   value+=10
   print (value)

}

var count = 0

increment (value: &count)

print (count)






