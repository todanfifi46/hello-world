//: Playground - noun: a place where people can play


import UIKit
//part 3
enum Gender{
    case Male
    case Female
}


class Animal{
    var species: String
    let gender: Gender
    let age: Int
    init(species: String,age: Int,gender: Gender){
        self.species = species
        self.age = age
        self.gender = gender
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

let lion = Lion(species: "Lion", age: 10, gender:.Male)
let dog = Dog(species: "Dog", age:9, gender: .Male)
let duck = Duck(species: "Duck", age: 8, gender: .Female)


/**********************************/


class Zoo {
    var animals:[Animal] = []
    
    init(animals:[Animal]){
        self.animals = animals
        
        
    }
    
    func washAnimal(){
        for element in animals{
            print("Wash \(element)")
        }
    }
    //part3
    
    private var internalMaleAnimals: [Animal] = []
    private var internalFemaleAnimals: [Animal] = []
    
    var maleAnimals:[Animal]{
        set {
            
            for animal in animals {
                if animal.gender == .Male {
                    internalMaleAnimals.append(animal)
                }
            }
            
        }
        get{
            return internalMaleAnimals
        }
    }
     

    var femaleAnimals:[Animal]{
            set {
                
                for animal in animals {
                    if (animal.gender == .Female) {
                        internalFemaleAnimals.append(animal)
                    }
                }
                
            }
            get{
                return internalFemaleAnimals
            }
        }
    
    func sortAnmimalAge(){
        self.animals = animals.sort{$0.age > $1.age}
    }
    
}

var zoo = Zoo(animals: [lion,dog])

zoo.femaleAnimals

/**********************************/
/*let animals = [lion,dog]
var femalearray : [Animal] = []
for animal in animals {
    if animal.gender == .Male{
        femalearray.append(animal)
    }
}
 */
