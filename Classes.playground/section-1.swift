// Playground - noun: a place where people can play

import UIKit

func LazyType() -> String {
    
    return "This is for lazy var, haha"
    
}


class SuperClass {
    
    // Stored properties
    var fName:String
    var lName:String
    
    // this can be accessed by a class level, not at object level
    class var typeLevel :String {
    return "This is a type level string"
    }
    
    lazy var lvar:String = LazyType()
    
    
    // read-only Computed property
    var fullName:String{
        
        get{
            return (self.fName+" "+self.lName)
        }
        
    }
    
    init (){
        fName = ""
        lName = ""
    }
    
    init (fName:String, lName:String){
        self.fName = fName
        self.lName = lName
    }
    
    func get () -> String{
        return (self.fName + " " + self.lName)
    }
    
    func display (){
        println("\(self.fName) \(self.lName)")
        
    }
    
    func set (fName:String, lName:String){
        self.fName = fName
        self.lName = lName
    }
    
    // Class-level function
    class func TypeLevelFunc (arg:String){
        println("This is a class level functionand we passed \(arg) to it")
        
    }
    
    
}


var myObject = SuperClass(fName: "Muhammad", lName:"Haroon" )

myObject.display()

myObject.fullName // accessing read-only computed property

myObject.lvar // LazyType funtion is called only when this particular instance is called

SuperClass.typeLevel

SuperClass.TypeLevelFunc("Hello") // naming a class-level function will give you an error

