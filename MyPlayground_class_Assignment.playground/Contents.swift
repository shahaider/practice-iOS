//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 
 
 1.create a machine class with poperties (id,power)
 2.create private properties and methods
 
 3.create another two class subclass from machine and also define private properties and methods
 
 4.Acheive this process by using (abstraction,encapsulation,inheritance and polymorphism)
 
 14-Dec-2016 submit
 
 */


class machine{
    var machinePower:Int
    var machineId:String
    private var torque :Int = 0
    private var calcu = 0
    
    var Desire_Force:Int{
        set{
            self.torque = newValue
            self.calcu = newValue * 2
            torque_result(getValue: newValue)
            calculated_force()
        }
        get{return self.torque}
        
    }
    
    init (power:Int, id: String){
        
        self.machineId = id
        self.machinePower = power
    }
    
    private func torque_result(getValue : Int) {
        
        print ("Desire torque \(getValue)")
    }
    
    private func calculated_force(){
        print("RESULT: \(self.calcu)")
    }
}

// testing
print ("*****Testing SuperClass**** ")
var catripillar = machine(power: 745, id: "M_C1")
catripillar.Desire_Force = 2

class solar_machine:machine{
    var totalcell : Int
    var Vendor : String
    private var S_torque = 0
    private var calcu = 0
    
    
    
    init(cell:Int,vendor:String, power: Int,id:String){
        self.totalcell = cell
        self.Vendor = vendor
        super.init(power: power, id: id)
    }
    
    override var Desire_Force:Int{
        set{
            self.S_torque = newValue
            self.calcu = newValue * 2
            torque_result(getValue: newValue)
            calculated_force()
        }
        get{return self.S_torque}
        
    }
    private func torque_result(getValue : Int) {
        
        print ("Desire Solar Machine Torque \(getValue)")
    }
    
    private func calculated_force(){
        print("Solar_RESULT: \(self.calcu)")
    }
    
}


class electric_machine:machine{
    var volt_type : Int
    var amp: Int
    private var E_torque = 0
    private var calcu = 0
    
    
    init(volt: Int, amp:Int, power:Int,id:String) {
        self.volt_type = volt
        self.amp = amp
        super.init(power: power, id: id)
    }
    
    override var Desire_Force:Int{
        set{
            self.E_torque = newValue
            self.calcu = newValue * 2
            calculated_force()
            torque_result(getValue: newValue)

        }
        get{return self.E_torque}
        
    }
    private func torque_result(getValue : Int) {
        
        print ("Desire Electric machine Torque = \(getValue)")
    }
    
    private func calculated_force(){
        print("Electric_RESULT: \(self.calcu)")
    }
    
}

// testing
print ("\n\n *****Testing SubClass 1**** ")
var siemen = solar_machine(cell: 10, vendor: "xcvv", power: 2700, id: "SM-1")
siemen.Desire_Force = 2
print ("\n *****Testing SubClass 2**** ")
var jbl = electric_machine(volt: 2, amp: 2, power: 333, id: "jbl-1")
jbl.Desire_Force = 30
