//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
///*
// TASK 1: (Status : DONE )
//
// OVERLOAD + TO PERFORM OPTIONAL (INT, DOUBLE, FLOAT, STRING)
// */

//struct value_optional{
//
//    var value_int : Int?
////   var value_double : Double?
////    var value_string : String?
////    var value_float : Float?
//}
//
//func + (v1 : value_optional?, v2 : value_optional?) -> value_optional
//{
//
//    if let myV1 = v1?.value_int {
//        
//                        if let myV2 = v2?.value_int  {
//                            return value_optional(value_int : myV1 + myV2)
//                        }
//                        else{
//                            print("v2 = nil" )
//                            }
//                    }
//    else {
//    print ("v1 = NIL")
//        
//    }
//return value_optional()
//}
//
//
//
//var value1 = value_optional(value_int: nil)
//var value2 = value_optional(value_int: 21)

//value1 + value2







///*
// TASK 2: (Status : DONE but not with ".")
// 
// OVERLOAD * TO PERFORM DOT OPERATION
// */
//struct vector_dot {
//    var x : Int
//    var y: Int
//}
//
//
//func * (v1_dot : vector_dot, v2_dot : vector_dot) -> Int
//{
//
//    var result :  Int
//    
//    result = (v1_dot.x * v2_dot.x) + (v1_dot.y * v2_dot.y)
//    
//    return result
//}
//
//var i = vector_dot(x: 2, y: 2)
//var j = vector_dot(x: 3, y: 3)
//
//i * j






///*
// TASK 3: (Status : DONE)
// 
// OVERLOAD * TO PERFORM MULTIPLICATION B/W CONST & MATRIX
// */
//struct matrix{
//    var x = [Int]()
//    var y = [Int] ()
//}
//
//func * (v_const : Int, v1_mat : matrix) -> matrix
//{
//    
//    var RX : [Int] = []
//
//    
//    
//    var RY : [Int] = []
//
//    
//    for i in 0..<(v1_mat.x.count){
//    
//        var result : Int
//        result = v_const * v1_mat.x[i]
//        
//        RX.append(result)
//        
//    }
//    
//    for j in 0..<(v1_mat.y.count){
//        
//        var result : Int
//        result = v_const * v1_mat.y[j]
//        RY.append(result)
//        
//    }
//
//
//    return matrix(x: RX, y: RY)
//}
//
//var value = matrix(x: [1,2,3], y: [4,5,6])
//
//
//var result = 4 * value
//
//print (result.x)
//print (result.y)




/*
 TASK 4:
 
 prefix operator for DATAtype
 ~ = string
 | = int
 ^ = double
 ^^ = float
 
// */
//
//prefix operator %
//
//prefix func % (value: String) -> String
//{
//return(value)
//}
//
//
//prefix operator |
//prefix func | (value : String) -> Int
//{
//    return(value)
//}
////prefix operator ^
////prefix func ^ (value : Double) -> Double
////{
////    return(value)
////}
////
////prefix operator ^^
////prefix func ^^ (value : Float) -> Float
////{
////    return(value)
////}
//
//%"shahrukh"





/*
 
 check optional (simple)
 
 */
//var v1 : Int?
//var v2 : Int?
//
//
//v2 = 20
//
//
//if let value1 = v1
//{
//    if let value2 = v2
//    {
//    print (value1 + value2)
//    }
//    else{
//    print ("V2 is NIL")
//    }
//}
//else{
//print ("V1 is NIL")
//}
//


 









//: Optional Chaining

struct Animal_OC {
    var name : String
    var species : String
    var tailLength : Int?
}


var animal_2 : Animal_OC? = Animal_OC(name: "Rock", species: "GSD", tailLength: nil)

if let  length = animal_2!.tailLength {
    print ("\(animal_2?.name)'s tail is \(length) cm long")
}
else {
    print ("\(animal_2!.name) doesn't have a tail")
}





