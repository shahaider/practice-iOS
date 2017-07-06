//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//var num = 201
//
//switch num {
//case 1...100 :
//    print ("in range 1")
//    fallthrough
//case 101...200 :
//    print ("in range 2")
//case 201...300 :
//    print ("in range 3")
//fallthrough
//default:
//    print("NOT")
//}
//
//
//
//
//var mychar = "\u{2661}"
//
//
//for _ in 1...10
//{
//print("SSUET")
//}


var abc : String?


abc = nil

func getdata (data : String?, error: String?)
{
    if let myvalue = data
    {
        print (myvalue)
    }
    else{
        print("nil error")
    }
}


getdata(data: "value" ,error: nil )



