//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

protocol Cards {
    var name:String {get}
    var descriptio:String {get set}
    var isFaceDown:Bool {get set}

}

struct SuitedCards:Cards {
    
    enum Suit {
        case diamond,spades,hearts,club
    }
    enum Value {
        case ace,two,three,four,five,six,seven,eight,nine,ten,king,queen,jack
    }
    
    var name:String
    var descriptio:String
    
    var value:Value
    var suit:Suit
    var isFaceDown:Bool
    
    init(value:Value , suit:Suit , isFaceDown:Bool) {
        self.value = value
        self.suit = suit
        self.isFaceDown = isFaceDown
        self.name = "simple cards"
        self.descriptio = "All cards except joker"
    }
    init() {
        self.value = .ace
        self.suit = .club
        self.isFaceDown = false
        self.name = "simple cards"
        self.descriptio = "All cards except joker"
    }
    init(value:Value , suit:Suit ) {
        self.value = value
        self.suit = suit
        self.isFaceDown = true
        self.name = "simple cards"
        self.descriptio = "All cards except joker"
    }
    
    
    //stored properties
    var suitDisplay:String {
        switch suit {
        case .club:
            return "This is Club"
        case .diamond:
            return "This is diamond"
            
        case .hearts:
            return "This is hearts"
            
        case .spades:
            return "This is spades"
        }
    }
    
    //when parameters needed
    func isBlackJack(otherCard:SuitedCards) -> Bool {
        
        switch value {
        case .ten , .king , .queen , .jack:
            return otherCard.value == .ace
        default:
            break
        }
        switch otherCard.value {
        case .ten , .king , .queen , .jack:
            return value == .ace
        default:
            break
        }
        
        return false
    }
}

var card1 = SuitedCards(value: .ace, suit: .club, isFaceDown: true)
var card2 = SuitedCards()

var card3 = SuitedCards(value: .ace, suit: .club)
card3.isFaceDown




struct Joker:Cards,Equatable{
    
    var descriptio: String
    var name: String
    var color:String
    var isFaceDown: Bool
    
    
    static func ==(left:Joker , right:Joker)->Bool{
        if left.color == right.color {
            return true
        }
        return false
    }
}

var jokerRed = Joker(descriptio: "this is joker", name: "REDJoker", color: "RED", isFaceDown:true)
var jokerBlack = Joker(descriptio: "this is joker", name: "REDJoker", color: "RED", isFaceDown:true)

jokerBlack == jokerRed
jokerBlack != jokerRed







//


struct Point:Comparable{
    var x=0 , y=0
    
    
    static func ==(p1:Point , p2:Point) -> Bool {
        
        if p1.x == p2.x && p1.y == p2.y {
            return true
        }
        return false
    }
    static func <(p1:Point , p2:Point) -> Bool {
        
        if p1.x < p2.x && p1.y < p2.y {
            return true
        }
        return false
    }
}
struct Size{
    var widht=0, height=0
}




struct rect {
    
    
    var origin = Point()
    var size = Size()
    
    var centre:Point {
        
        get {
            let c  = Point(x: self.origin.x+self.size.widht/2, y: self.origin.y+self.size.height/2)
            
            return c
        }
        set{
            let o  = Point(x: self.origin.x-newValue.x/2, y: self.origin.y-newValue.y/2)
            self.origin = o
        }
        
    }
    
    
}


var p = Point(x: 10, y: 10)
var s = Size(widht: 100, height: 100)

var rectangle = rect(origin: p, size: s)
rectangle.centre = Point(x: 100, y: 100)
rectangle.origin



var p1 = Point(x: 10, y: 10)
var p2 = Point(x: 10, y: 10)

p1 >= p2



var myCards:Cards = Joker(descriptio: "abc", name: "joker", color: "RED", isFaceDown: true)



struct MyCards{
    
    
    var array = [Cards]()
    
    init() {
        var jokerCard = Joker(descriptio: "abc", name: "joker", color: "RED", isFaceDown: true)
        var suitCards = SuitedCards()
        
        self.array.append(suitCards)
        self.array.append(jokerCard)

    }
}


var mCards = MyCards()
print(mCards.array)

