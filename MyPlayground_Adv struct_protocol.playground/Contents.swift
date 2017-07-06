//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


protocol PlayCard{

    var shortName: String{get}
    var isFaceDown: Bool{get set}
    var descrip: String{get set}
}

struct joker: PlayCard, Equatable {
  
   
    
    enum CardColor{
        case Red,Black
    }
    let color:CardColor
    var isFaceDown: Bool
    var descrip: String
    var shortName: String{
        if isFaceDown{
            return "DOWN???"
        }
        else {
            switch color {
            case .Red:
             return "RED"
            case .Black:
                return "Black"
            }
        }
        
    }
    
    static func == (left:joker, right:joker)->Bool{
        if left.color == right.color{
        return true
        }
        return false

    }
    
    }




struct SuiteCard:PlayCard{


    enum CardValue{
    
        case Ace,King,Queen,Jack,Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten;
    
    }
    
    enum CardSuit{
    
        case Heart,Club,Spade,Diamond;
    }

    // protocol declare
    var shortName : String
    var descrip : String
    var isFaceDown:Bool
    
    
    
    var value : CardValue
    var suit : CardSuit

    
    init(){
    self.value = .Ace
    self.suit = .Heart
    self.isFaceDown = false
    self.descrip = "ALL Card except JOker"
    self.shortName = "SIMPLE CARD"
    }
    
    init (value:CardValue, suit:CardSuit, FaceDown:Bool){
    
        self.value = value
        self.suit = suit
        self.descrip = "ALL Card except JOker"
        self.shortName = "SIMPLE CARD"
        self.isFaceDown = FaceDown
    
    }
    
    
    var SuiteDisplay :String{
    
        switch suit {
        case .Heart:
            return "♥️"
        case .Club:
            return "♣️"
        case .Spade:
            return "♠️"
        case .Diamond:
            return "♦️"
        }
    }
    
    
    
    func isBlackJack (otherCard: SuiteCard)-> Bool{
    
        switch value {
        case .Ten,.Jack,.Queen,.King:
            return otherCard.value == .Ace
        default:
            break
        }
        
        switch otherCard.value {
            case .Ten,.Jack,.Queen,.King:
                return value == .Ace
            default:
                break
            }
       return false
        }
    
    func isFaceCard(check: SuiteCard) -> Bool{
        
        switch value {
        case .King, .Queen, .Jack:
            return true
        default: break
        }
        return false
    }
    
    }

var card1 = SuiteCard(value: .Ace, suit: .Heart, FaceDown: false)
var card2 = SuiteCard(value: .King, suit: .Spade, FaceDown: false)
var card3 = SuiteCard()

card1.isBlackJack(otherCard: card2)
card3.isBlackJack(otherCard: card2)
card3.isFaceCard(check: card3)

