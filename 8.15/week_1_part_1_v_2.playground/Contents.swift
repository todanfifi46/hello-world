//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var species: String
    
    init(species:String){
        self.species = species
    }
    
    func makeSounds(){
        
    }
}

class Lion : Animal {
    //more safety
    convenience init(){self.init(species:"Lion")}
    override func makeSounds() {
        print("roar")
    }
}
class Dog : Animal{
        convenience init(){self.init(species:"Dog")}
    override func makeSounds(){
        print("bark")
    }
}

class Duck : Animal{
        convenience init(){self.init(species:"Duck")}
    override func makeSounds(){
    print("quack")
    }
}

let lion = Lion()
let dog = Dog()
let duck = Duck()
