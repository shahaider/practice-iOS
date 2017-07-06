//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//struct VehicleStruct{
//
//    var Vehicle_Color:String
//    var Vehicle_Year:Double
//    
//    init(color:String,year:Double){
//        self.Vehicle_Color = color
//        self.Vehicle_Year = year
//    }
//}
//
//var bike = VehicleStruct(color: "Black", year: 2016)
//
//var china_bike = bike
//
//china_bike.Vehicle_Color = "White"
//
//print (bike.Vehicle_Color)
//print (china_bike.Vehicle_Color)

//
//var array = [1,2,3,4,5]
//var copyarray = array
//
//copyarray.append(10)
//
//
//print(array)
//print(copyarray)
//
//
//var chk_dic = [2:"Mango",3:"Banana"]
//var other_dic = chk_dic
//other_dic[2] = nil
//
//print (chk_dic)
//print( other_dic)


//**************************//
//print ("\n\nCLASS OUTPUT")


class vehicleClass {

    var C_year: Double
    var C_color: String
    private var gear: Int = 0
    var speed = 0
    
    var gearShift:Int{
        set{
        self.gear = newValue
        print ("Gear=\(newValue)")
        self.gearProcess(gearValue: newValue)
        self.speed = 20 * newValue
        }
        get{
        return self.gear
        }
    }
    
    init(year:Double, color:String){
        
        self.C_color = color
        self.C_year = year
    }

   private func gearProcess(gearValue:Int) {
        print("Here is the Gear Shift Process! and its value = \(gearValue) and speed = \(self.speed)")
    }
    
    func move(){
    print("Speed= \(self.speed)")
    
    }
}


var bike1 = vehicleClass(year: 2016, color: "Red")
var copybike = bike1

copybike.C_color = "white"

print (bike1.C_color)
print (copybike.C_color)

//bike1.gear = 2                    cannot access due to private
copybike.gearShift = 2

bike1.move()




// inheritance 

class yamaha:vehicleClass{

    var kick:Bool
    
    private var bikeGear = 0
    
    override var gearShift: Int {
    
        set{
        self.bikeGear = newValue
        self.bikeGearshiftProcess()
        self.speed = 20 * newValue
        }
        get{
            return self.bikeGear
        }
    }
    
    init(kick: Bool, year: Double, color: String) {
        self.kick = kick
        super.init(year: year, color: color)
    }
     private func bikeGearshiftProcess(){
        print("Bike Gear shift process! and its Value = \(self.bikeGear)")
    }
    
    override func move() {
        print("yamaha is moving at = \(self.speed)")
    }

}



class car : vehicleClass{

    var carBelt : String
    private var carGear = 10
    
    init(seatBelt: String, year: Double, color: String){
    self.carBelt = seatBelt
    super.init(year: year, color: color)
    }
    
    override var gearShift: Int{
        
                set{
                    self.carGear = newValue
                    self.carGearshiftProcess()
                    self.speed = 20 * newValue
                }
        
                get{
                    return self.carGear
                }
        
            }
        
            private func carGearshiftProcess(){
                print("Car Gear shift process! and its Value = \(self.carGear)")
            }
            
            override func move() {
                print("Car is moving at = \(self.speed)")
            }

}

var sportBike = yamaha(kick: true, year: 2015, color: "purple")

sportBike.gearShift = 2
sportBike.move()

var toyota = car(seatBelt: "yes", year: 2017, color: "brown")
toyota.gearShift = 10
toyota.move()


