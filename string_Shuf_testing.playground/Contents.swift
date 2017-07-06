//: Playground - noun: a place where people can play

//import UIKit

var str1 = "AB"
var str2 = "CD"
var shuf = "CABD"

var s1 = Array(str1.characters)
var s2 = Array(str2.characters)
var shuA = Array(shuf.characters)

// cabd 
// acdb
print(s1[0])
//s1[0]

print(shuA)

var S1_index = shuA.index(of: "A")!
var S2_index = shuA.index(of: "B")!

print (S1_index)

if S1_index < S2_index {
    
    print (true)
}
    
    
//    if s1[chk] == shuA[chk]{
//    
//        for s1_chk in chk..<(s1.count){
//        
//        s1[s1_chk] == s1[s1_chk]
//        }
//    }

//

    
    



