//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol playcard{

    var shortName: String{get}
    var isFaceDown: Bool{get set}
    var descrip: String {get set}

}




struct card: playcard{

    enum value{
    case ace,two, three, four, five, six, seven, eight, nine, ten, jack, queen, king
    }
    
    enum suit{
    case spade, club, diamond, heart
    }

    var Suit : suit
    var Value : value
    
    var shortName: String
    var isFaceDown: Bool
    var descrip: String
    
    
    init(){
        
        self.Value = .eight
        self.Suit = .club
        self.shortName = "eigh of heart"
        self.isFaceDown = false
        self.descrip = "8 ♥️"
        
        
    }
    
    init (Suited: suit, Valued: value){
    
        self.Suit = Suited
        self.Value = Valued
        self.shortName = "eigh of heart"
        self.isFaceDown = false
        self.descrip = "8 ♥️"

    }
    
    
    var suitedCard: String{
    
    switch Suit{
    
    case .diamond:
        return "♦️"
    case .club:
        return "♣️"
    case .heart:
        return "❤️"
    case .spade:
        return "♠️"
    
    }
        
     
    
    }
    
    

}

var firstPlayer = card(Suited: .heart, Valued: .two)
var seconPlayer = card()
var thirdPlayer = card(Suited: .club, Valued: .five)


print(thirdPlayer.suitedCard)

print (firstPlayer)

print (firstPlayer.suitedCard)


var arrayValue = [1,2,5,4,3]


//var mapCheck = arrayValue.map { (c: Int) -> String in
//    return String(c)
// }
var mapCheck = arrayValue.map{String($0)}
print (mapCheck)
//var filterCheck = arrayValue.filter { (d: Int) -> Bool in
//    return   d > 3

var filterCheck = arrayValue.filter{$0 > 3}
print(filterCheck)


//var sortCheck = arrayValue.sorted { (first: Int, Second: Int) -> Bool in
//    return first < Second
//}
var sortCheck = arrayValue.sorted{$0 > $1}
print(sortCheck)

//var reduceCheck = arrayValue.reduce(0) { (Result : Int, next : Int) -> Int in
//    var sum = Result
//    sum += next
//return sum
//}

var reduceCheck = arrayValue.reduce(0,{$0 + $1})
print(reduceCheck)


struct employee{
    
    var name: String
    var age : Int
    var salary: [Int]
    
    
}


var worker : [employee] = []

var shahrukh = employee(name: "ShahRukh", age: 34, salary: [400000,25000,12500,5000])
var akmal = employee(name: "Akmal", age: 32, salary: [300000,20000, 10000, 5000])
var nabeel = employee(name: "Nabeel", age: 30, salary: [250000,20000,20000,10000])
var junaid = employee(name: "Junaid", age: 50, salary: [10000,20000,20000,10000])


worker.append (shahrukh)
worker.append(akmal)
worker.append(nabeel)
worker.append(junaid)

print (worker.count)


var workerSort = worker.sorted { (personOne : employee, personTwo) -> Bool in
    var person1Wage = personOne.salary.reduce(0, {$0 + $1})
    var person2Wage = personTwo.salary.reduce(0, {$0 + $1})
    
  return  person1Wage < person2Wage
    
    
}

print (workerSort)



for i in 0...(worker.count-1){

    var sum = worker[i].salary.reduce(0, { $0 + $1})
    print ("\(worker[i].name) = \(sum)")

}

//var workerFilter = worker.filter { (data: employee) -> Bool in
//    var check = data.salary.reduce(0, {$0 + $1})
//    
//    return check > 305000
//}

var workerFilter = worker.filter{ $0.salary.reduce(0,{$0 + $1}) > 305000}

print (workerFilter)


var workerMAP = worker.map { (c : employee) -> String in
    return String((c.salary.reduce(0, {$0 + $1})))
}



print ("\n ************ CLASS *************** \n")

class tv{

    var type : String
    var width : Int
    var height : Int
    var dimension: Int{
        set{
        self.area()
        }
        get {
        return self.area()
        }

    }
    
    init(){
    self.type = "Color"
    self.width = 20
    self.height = 50
    }
    
    init (Type : String, Width: Int, Height: Int){
    
    self.type = Type
    self.width = Width
    self.height = Height
    
    }
    
     func area()-> Int{
    
        let w = self.width
        let h = self.height
        
    return w * h
    }
}

var buyer1 = tv()
var buyer2 = tv(Type: "b/w", Width: 40, Height: 30)

print(buyer1.type)
print(buyer2.type)
print (buyer1.dimension)
//print (buyer2.area())



class flatTv : tv{

    var style: String
    var brand : String
    
    init (Style: String, Brand: String, type: String, width: Int, height: Int){
    
        self.style = Style
        self.brand = Brand
       super.init(Type: type, Width: width, Height: height)
    
    }
    
    var dimen : Int{
    
        set{
        super.area()
        }
        get{
        return super.area()
        }
    }


}

var buyer3 = flatTv(Style: "plasma", Brand: "Samsung", type: "color", width: 60, height: 50)

print(buyer3.area())

