//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol Playcard{

    var shortname: String {get}
    var isFaceDown : Bool {get set}
    var descrip : String {get set}
    
}

struct joker: Playcard, Equatable{
    
    
    enum Color{
        case  red, black
    }
    
    let color : Color
    
    var descrip: String
    var isFaceDown: Bool
    var shortname : String{
        if isFaceDown {
            return "????"
        }
        switch color {
        case .red:
            return "RED"
        case .black:
            return "BLACK"
        }
    }
  
    static func == (left: joker, right: joker)-> Bool {
        
        if left.color == right.color
        {
            return true
        }
        return false
    }
}



struct SuitedCards: Playcard {

    
    enum Value{
    
    case Two,three,four,five,six,seven,eight,nine,ten,King, Queen, Jack, Ace
    
    }
    
    enum Suit{
    
    case spades, diamond, heart, club
        
    }
    
    // protocol declare
    var shortname : String
    var descrip : String
    var isFaceDown:Bool

    
    // struct declare
    let value : Value
    let suit : Suit

  
    
    
    // initializer
    init(){
    self.value = .Ace
    self.suit = .diamond
    self.isFaceDown = false
        self.shortname = "Simple Card"
        self.descrip = "All card except JOKER"
    }
    
    init(value:Value, suit:Suit){
    
        self.value = value
        self.suit = suit
        self.isFaceDown = true
        self.shortname = "Simple Card"
        self.descrip = "All card except JOKER"
        
    
    }
    
    
    init(value:Value , suit:Suit , isFaceDown:Bool) {
        self.value = value
        self.suit = suit
        self.isFaceDown = isFaceDown
        self.shortname = "Simple Card"
        self.descrip = "All card except JOKER"
   
    }


    
    
    var suitedDisplay:String{
        
        
        switch suit{
        case .heart:
         return "❤️"
        case .spades:
         return "♠️"
        case .diamond:
            return "♦️"
        case .club:
            return "♣️"
        
        }
    }
    
    func isblackjack(other:SuitedCards) -> Bool{
        
        switch value {
        case .ten, .King, .Queen, .Jack:
            return other.value == .Ace
        default:
            break
        }
        switch other.value {
        case .ten, .King, .Queen, .Jack:
            return value == .Ace
        default:
            break
        }
    return false
    }
    
    
    
    func isfacecard(check:SuitedCards) -> Bool{
        
        switch value {
        case .King, .Queen, .Jack:
            return true
        default: break
        }
    return false
    }
    
}





var joker1 = joker(color: .red, descrip: "JOKER", isFaceDown: true)
var joker2 = joker(color: .black, descrip: "JOKER", isFaceDown: false)


joker1 != joker2

var card3 = SuitedCards()
card3.isFaceDown

var card4 = SuitedCards(value: .five, suit: .heart, isFaceDown: false)

print (card4.suitedDisplay)




