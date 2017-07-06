//: Playground - noun: a place where people can play

import UIKit

/*:
 
 task ONE: Create struct of name : User, then add in array, after that append into it
 */
struct User {

    let userID : String
    let name : String
    let age : Int
    let percentage : Double
}

var userArray = [User]()


var SRK = User(userID: "Shahaider", name: "Shahrukh", age: 33, percentage: 95.0)
var HAI = User(userID: "Haider", name: "Haider", age: 30, percentage: 95.5)
var faw = User(userID: "fawad", name: "fawad", age: 30, percentage: 96)


userArray.append(SRK)
userArray.append(HAI)
userArray.append(faw)

print ("\n CHECK ARRAY CONTENT:")
print (userArray)

print ("\n RUNNING ARRAY LOOP:")

for i in userArray
{
print (i)
}




/*:
 
 task TWO: CHECK HIGHEST USER AND PERCENTAGE
 */
func check (value : [User]) -> String
{

    var max = 0.0
    var name = ""
    
    for user in value {
        
        
        if user.percentage > max {
            max = user.percentage
            name = user.name
        }
        
        else {
        }
    
    }
return name + " \(max)"
}


print ( "\n CHECK USER WITH HIGHEST PERCENTAGE :")

print(check(value: userArray))
