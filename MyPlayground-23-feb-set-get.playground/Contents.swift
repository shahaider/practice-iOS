//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//
//
//struct teamRecord{
//    var wins : Int
//    var losses : Int
//
//}
//
//
//func +(left : teamRecord, right : teamRecord)-> teamRecord{
//
//    return teamRecord(wins:left.wins + right.wins, losses: right.losses + left.losses)
//
//}
//
//var team1 = teamRecord(wins: 20, losses: 30)
//var team2 = teamRecord(wins: 30, losses: 40)
//
//var total = team1 + team2
//
//print (total)
//
//
//
//var X_dic = ["shahrukh":33, "hiba":29,"shahryaar":7,"sarim":2,"salaar":1]
//
//X_dic["papa"] = 68
//
//X_dic.removeValue(forKey: "shahrukh")
//
//print(X_dic)
//
//
//for j in stride(from: 20, through: 1, by: -1)
//{
//
//print(j)
//}
//
//



// CLosure



struct student{
    var name : String
    var age : Int
    var mark : [Int]
}

// 2.Make Array of Student Struct/Class

var ssuet :[student] = []
var noman = student(name: "Noman", age: 22, mark: [90,91,92,93,94])
var hassan = student(name: "Hassan", age: 21, mark: [75,85,92,69,86])
var baber = student(name: "Baber", age: 22, mark: [45,67,60,55,59])
var javed = student(name: "Javed", age: 20, mark: [80,71,82,63,84])
var sarim = student(name: "Sarim", age: 19, mark: [97,98,99,96,97])


ssuet.append(noman)
ssuet.append(hassan)
ssuet.append(baber)
ssuet.append(javed)
ssuet.append(sarim)

print("*******Check Student array********")
print(ssuet)


// 3.Map array into Student ages[Int] array


print("\n *******Check Student Age Map Array********")

//var ssuetMap = ssuet.map { (a:student) -> String in
//    return (String(a.age))

var ssuetMap = ssuet.map{String($0.age)}


print(ssuetMap)


// 4.Filter students array with marks >80%

print("\n *******Check Student Mark Filter ********")

var ssuetFilter = ssuet.filter{($0.mark.reduce(0, {$0+$1})*100/500) > 80 ? true : false}

print (ssuetFilter)



//5.Sort array by their percentage with alphabetic order


print("\n *******Check Student Mark Sorting ********")


var ssuetSort = ssuet.sorted { (a: student, b: student) -> Bool in
    return  a.mark.reduce(0,{$0 + $1}) > b.mark.reduce(0,{$0 + $1})
}

print(ssuetSort)
//6.Reduce into String "(Name,Age,totalMarks)"


print("\n *******Check Student Array Reduce Operation ********")

var ssuetReduce = ssuet.reduce("") { (first: String, nextString: student) -> String in
    var final = first
    
   final += nextString.name + String(nextString.age) + String(nextString.mark.reduce(0, {$0 + $1}))

return final
}

print (ssuetReduce)

//  simple closure

print("\n\n***** simple Closure********")

var number = [1,2,3,4,9,8,7,6,5]

//var nSort = number.sorted { (a: Int, b: Int) -> Bool in
//    return a > b
//}

var nSort = number.sorted{$0 > $1}
print (nSort)

//**************************************************************


//var nMap = number.map { (c: Int) -> String in
//    return String(c)
//}

var nMap = number.map{String($0)}

print (nMap)

//**************************************************************

//var nFilter = number.filter { (d: Int) -> Bool in
//    return d > 5
//}

var nFilter = number.filter{$0 > 5}

print (nFilter)

//**************************************************************

//var nReduce = number.reduce(0) { (result : Int, next: Int) -> Int in
//    var sum = result
//    
//    sum += next
//return sum
//}

var nReduce = number.reduce(10, {$0+$1})
print (nReduce)


for i in 1...8{

    for j in 1...8{
    
        if j % 2 == i % 2 {
            print ("*", terminator: "")
        }
        else{
            print ("!", terminator: "")
        }
    }
print ()
}

struct value{
    var x : Int
    var y : Int
}


func + (x:value,y:value)->value{

return (value(x: x.x + y.x, y: x.y + y.y))
}

var value1 = value(x: 2, y: 3)
var value2 = value(x: 2, y: 4)

var result = value1 + value2

print(result)

prefix operator %
prefix func % (num: Double)->Double{

return num/100

}

%66

enum name:Int{
case shahrukh = 0 , hiba, shahryaar,sarim,salaar
}

var family:name = name.hiba

struct suitedCard{
    enum suit{
    case heart,spade,diamond,club
    }
    enum value{
    case one, two, three, four, five
    }
    
    
    var Suit : suit
    var Value : value

    
//    var display : String{
//    
//        switch Suit {
//        case .heart:
//            <#code#>
//        default:
//            <#code#>
//        }
//    }
//}

