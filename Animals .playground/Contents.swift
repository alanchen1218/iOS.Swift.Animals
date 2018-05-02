//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Animal{
    var name: String
    var health = 100
    
    init(name: String){
        self.name = name
    }
    
    func displayHealth(){
        print(self.health)
    }
}

var myAnimal = Animal(name: "Alan")
myAnimal.displayHealth()

class Cat: Animal {
    init(catName : String){
        super.init(name: catName)
        self.health = 150
    }
    
    func growl(){
        print("Rawr!")
    }
    
    func run(){
        print("Running!")
        self.health -= 10
    }
}

//var car = Cat(catName:"Alan")
//car.growl()
//car.run()
//car.displayHealth()

class Cheetah: Cat {
    init(CheetahName: String) {
        super.init(catName: CheetahName)
    }
    override func run(){
        if self.health > 50 {
            print("Running Fast!")
            self.health -= 50
        }
        else {
            print("no health to run")
        }
        
    }
    func sleep() {
        health += 50
    }
}

class Lion: Cat {
    init(LionName: String){
        super.init(catName: LionName)
        self.health = 200
    }
    override func growl() {
        print("ROAR!!!! I am the King of the Jungle")
    }
}

var cheet = Cheetah(CheetahName: "Alan")
cheet.run()
cheet.run()
cheet.run()
cheet.run()
cheet.displayHealth()
cheet.sleep()
cheet.displayHealth()


var ly = Lion(LionName: "Alan")
ly.run()
ly.run()
ly.run()
ly.growl()
ly.displayHealth()

