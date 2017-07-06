//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*
 TASK 1:  Triangle Representation
 */

for i in 1..<6
{
if i <= 6
    {
        print (String (repeating:"*",count: i))     // REPEATING FUNCTION IN SWIFT
    }

}




/*
TASK 2: Leap year
 */



//func leap (year:Int) -> String
//{
//let value = year % 4
//    
//    if value == 0
//    {
//    return "It's Leap Year"
//    }
//    else {
//    return "Sorry"
//    }
//}
//
//print(leap(year: 2012))


/*
TASK:3 FACTORIAL
 */
//
//func factorial (num: Int) -> Int
//{
//    var value = 1
//    for i in (1...num).reversed()   // Or "stride(from: to: by:)"
//    {
//    value = i * value
//    }
//return value
//}

//print(factorial(num: 10))






/*
 TASK 4: PRIME NUMBER
 */
//func prime(Pnum:Int) -> String
//{
//    
//    var count = 0
//    
//    for chk in 2...Pnum
//    {
//        let pvalue = Pnum % chk
//
//        if pvalue == 0
//        {
//        count += 1
//        }
//    
//    }
//    if count == 1
//    {
//    return " Prime"
//    }
//    else{
//    return "not Prime!!"
//    }
//return ""
//}
//
//print (prime(Pnum: 13))







