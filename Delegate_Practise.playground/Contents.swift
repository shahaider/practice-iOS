//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol messageDelegate{

    func messageExchange(msg : String)

}

class person:messageDelegate{
    
    var name : String
    var inbox : String?
    
    init(ID : String){
    
        self.name = ID
    }
    
     func messageExchange(msg: String) {
        self.inbox = msg
    }
}




class wareHouse{

    var wareID : String
    var message = "PLEASE CONTACT ME, URGENT!!!"
    var personDelegate : messageDelegate?
    
    init (Name: String){
        self.wareID = Name
    }
    
    func sendMessage(){
    self.personDelegate?.messageExchange(msg: self.message)
    
    }
}



// Creating Object:

var p1 = person(ID: "ShahRukh")
var w1 = wareHouse(Name: "Perception")

w1.wareID
w1.message

p1.name
p1.inbox

// create link b/w w1 and p1
w1.personDelegate = p1
w1.sendMessage()


p1.name
p1.inbox
