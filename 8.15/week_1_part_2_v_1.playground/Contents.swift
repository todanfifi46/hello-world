//: Playground - noun: a place where people can play

import UIKit

class Animal{
    var species: String
    let age:Int
    init(species:String,age:Int){
        self.species = species
        self.age = age
    }
    
    func makeSounds(){
        
    }
}

class Lion : Animal {

    override func makeSounds() {
        print("roar")
    }
}
class Dog : Animal{

    override func makeSounds(){
        print("bark")
    }
}

class Duck : Animal{

    override func makeSounds(){
        print("quack")
    }
}

let lion = Lion(species: "Lion",age: 10)
let dog = Dog(species: "Dog",age:8)
let duck = Duck(species: "duck",age:7)

lion.makeSounds()

/**********************************/


class Zoo {
    var animals:[Animal] = []

    
    func washAnimal(){
        for element in animals{
        print("Wash \(element)")
        }
    }
}

var zoo = Zoo()
//more convenience! 也可以 zoo.animals = [lion,dog,duck]
zoo.animals.append(lion)
zoo.animals.append(dog)
zoo.animals.append(duck)
zoo.washAnimal()
