//: Playground - noun: a place where people can play

import UIKit


var str = "Hello, playground"

///*:
// Equeue & Dequeue
// */
//var queue:[Int] = [1,2,3,4,5]
//
//
//    
//    
//    
//    func enqueue (a:Int) -> [Int]
//
//    {
//    
//        queue.append(a)
//        
//        return queue
//    
//    }
//
//    func dequeue ()-> [Int]
//        
//    {
//        
//        queue.removeFirst()
//        
//        return queue
//    }
//
//
//    
//
//
//var Evalue = enqueue(a: 6)
//var Dvalue = dequeue()


///*:
// Stack
// */
//var queue:[Int] = [1,2,3,4,5]
//
//
//
//
//
//func enqueue (a:Int) -> [Int]
//    
//{
//    
//    queue.append(a)
//    
//    return queue
//    
//}
//
//func dequeue ()-> [Int]
//    
//{
//    
//    queue.removeLast()
//    
//    return queue
//}
//
//
//
//
//
//var Evalue = enqueue(a: 6)
//var Dvalue = dequeue()


///*:
// count spaces in "My name is Ali"
// */
//
//
//func spaceCount (a: String) -> String
//{
//
//    var SC:Int = 0
//    
//    
//    for count in a.characters
//    {
//     
//        if count == " "
//     {
//        SC += 1
//        
//        }
//    }
//    return "The Space Count \(SC) "
//}
//
//print (spaceCount(a: "My name is Ali "))






/*:
 dictionary
 */

//hint: addition to interger array: var count = IntArray.reduce(0,+)
    
var studentMark =  ["Shahrukh": [98,97,95,100,90], "fawad": [98,87,92,90,90], "Zaid": [89,99,95,80,90]]



func ssuet (a:Dictionary<String,[Int]>) -> (String,Int)

{

  
    var Smark = 0
    var MM = 0
    var Name = "no one"

    
    
for (name , mark) in studentMark
{
    Smark = mark.reduce(0, +)
        if Smark > MM
        {
        MM = Smark
            Name = name

        }
}

    return (Name , MM)
}

print (ssuet(a: studentMark))
