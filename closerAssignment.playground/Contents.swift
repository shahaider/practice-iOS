//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 1.Make Struct/Class for Students (name,age,marsksArray)

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

var ssuetMap = ssuet.map{$0.age}

// ----------OR----------


//var ssuetMap = ssuet.map({ (a:student)-> Int in
//
//    return a.age
//})
print (ssuetMap)




// 4.Filter students array with marks >80%

print("\n *******Check Student Mark Filter ********")

let ssuetFilter = ssuet.filter({($0.mark.reduce(0, { $0 + $1 })*100)/500 > 80 ? true :  false})
print(ssuetFilter)
   


print (ssuetFilter)


//5.Sort array by their percentage with alphabetic order


print("\n *******Check Student Mark Sorting ********")

var ssuetSort = ssuet.sorted { (first : student, second : student) -> Bool in

    var firstPerson = first.mark.reduce(0, {$0+$1})
    var secondPerson = second.mark.reduce(0, {$0+$1})

    return firstPerson > secondPerson
    
}
print (ssuetSort)

//6.Reduce into String "(Name,Age,totalMarks)"

print("\n *******Check Student Array Reduce Operation ********")

var ssuetReduce = ssuet.reduce("") { (first: String, nextString : student) -> String in
    
    var final = first
    final += nextString.name + String(nextString.age) + String(nextString.mark.reduce(0, {$0+$1}))
    return final
}

print (ssuetReduce)




