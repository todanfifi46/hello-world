//: Playground - noun: a place where people can play


import UIKit
//part 3


class Animal{
    enum Gender{
        case Male
        case Female
    }
    let species: String
    let gender: Gender
    var age: Int = 0
    init(species: String,gender: Gender){
        self.species = species
        self.gender = gender
    }
    
    func makeSounds(){
        
    }
}

class Lion : Animal {
    init(gender:Gender){super.init(species:"Lion",gender:gender)}
    override func makeSounds() {
        print("roar")
    }
}
class Dog : Animal{
    init(gender:Gender){super.init(species:"Dog",gender:gender)}
    override func makeSounds(){
        print("bark")
    }
}

class Duck : Animal{
    init(gender:Gender){super.init(species:"Duck",gender:gender)}
    override func makeSounds(){
        print("quack")
    }
}

let lion = Lion(gender:.Male)
lion.age = 10
let dog = Dog(gender: .Male)
dog.age = 11
let duck = Duck(gender: .Female)
duck.age = 12

/**********************************/


class Zoo {
    
    var animals:[Animal] = [lion,dog,duck]
    
    var maleAnimals:[Animal]{
        get {
            var templMaleAnimals: [Animal] = []
            for animal in self.animals {
                switch animal.gender{
                case .Male : templMaleAnimals.append(animal)
                case .Female :break
                }
            }
            return templMaleAnimals
        }

    }

    var femaleAnimals:[Animal]{
        get {
            var tempFemaleAnimals: [Animal] = []
            for animal in self.animals {
                switch animal.gender{
                case .Male : break
                case .Female :tempFemaleAnimals.append(animal)
                }
            }
            return tempFemaleAnimals
        }
        

    }
    
    func isAgeGreaterThan(animal1:Animal,animal2:Animal) -> Bool {
        return animal1.age > animal2.age
    }
    
    func sortAnimalAge(){
        self.animals = animals.sort(isAgeGreaterThan)
    }
    
}

var zoo = Zoo()

print(zoo.animals)
zoo.femaleAnimals
zoo.sortAnimalAge()
print(zoo.animals)
