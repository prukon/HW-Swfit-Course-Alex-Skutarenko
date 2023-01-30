import UIKit
print("122")

//лекция
class Human {
    var firstName: String = "" {
//      родительский класс может иметь в stored proprerties APPSERVER и не может иметь  get и set
        willSet {
            
        }
        didSet {
            
        }
    }
    var lastname: String = ""
    var fullName : String {
        firstName + " " + lastname
    }
    func sayHello() -> String {
        return "Hello"
    }
}

class SmartHuman : Human {
}

class Student : SmartHuman {
//    использование родительского метода
    override func sayHello() -> String {
        super.sayHello() + " Gays!"
    }
}

class Kids : Human {
//     переопределение метода
    override func sayHello() -> String {
       return "Agu!"
    }
    override var fullName : String {
       return firstName
    }
    
//    дочерний класс может иметь в stored proprerties get и set или APPSERVER. Родитель не может get и set
//    Пример get и set
    override var firstName: String {
        set {
            super.firstName = newValue + " -)"
        }
        get {
            return super.firstName
        }
    }
//    Пример APPSERVER
    override var lastname: String {
        didSet {
            print("newValue = " + self.lastname)
        }
    }
}
let  human = Human()
human.firstName = "Вася"
human.lastname = "Иванов"
human.fullName
human.sayHello()

let student = Student()
student.firstName = "Аня"
student.lastname = "Фролова"
student.fullName
student.sayHello()

let kid = Kids()
kid.firstName = "Петя"
kid.lastname = "Петров"
kid.lastname = "Петров123"

kid.fullName
kid.sayHello()

print("_________")
print("task1")

//homeWork
class Artist {
    var firstName: String = ""
    var secondName: String = ""
    var action: String = ""
}

class Dancer: Artist {
}
var dancer = Dancer()
dancer.firstName = "Vasia"
dancer.secondName = "Popov"
dancer.action = "Dancing"

class Singer: Artist {
}
var singer = Singer()
singer.firstName = "Igor"
singer.secondName = "Novikov"
singer.action = "Sing"

var array = [dancer, singer]
for i in array {
    print(i.action)
}
//task2
print("_________")
print("task2")
class TransportVehicle {
var name: String = ""
//    var speed: Int {
//        return 0
//    }
    var speed: Int = 0
//    var capacity: Int {
//        return 0
//    }
    var capacity: Int = 0

//    var costOneDrive: Int {
//        return 0
//    }
    var costOneDrive: Int = 0

//    var distance: Int {
//        return 0
//    }
    var distance: Int = 7000
    var passangers : Int = 2000

    
    func timeDrive()->Int {
        var timeDrive = distance/self.speed
        print("\(name) \(timeDrive) часов")
        return timeDrive
    }
    func costDrive () -> Int {
        var costDrive = self.capacity * self.costOneDrive
        print("\(name) \(costDrive) руб")
        return costDrive
    }
    func countDrive () -> Int {
        var countDrive = self.passangers / self.capacity
        print("\(name) \(countDrive) поездок")
        return countDrive
    }
}

 class Plane: TransportVehicle {
}
var plane = Plane()
plane.name = "Самолет"
plane.capacity = 400
plane.speed = 700
plane.costOneDrive = 5000

class Ship: TransportVehicle {
}
var ship = Ship()
ship.name = "Корабль"
ship.capacity = 4000
ship.speed = 50
ship.costOneDrive = 4000

class Auto: TransportVehicle {
}
var auto = Auto()
auto.name = "Авто"
auto.capacity = 4
auto.speed = 90
auto.costOneDrive = 15000
class Train: TransportVehicle {
}
var train = Train()
train.name = "Поезд"
train.capacity = 600
train.speed = 60
train.costOneDrive = 4000

var arrayTransport = [plane, ship, auto, train]
for i in arrayTransport {
    i.costDrive()
    i.timeDrive()
    i.countDrive()
}
//task3
print("_________")
print("task3")


class People: LivingCreatures {
    
}
class Monkey: Quadrupeds {
    
}
class Dog: Quadrupeds {
    
}
class Giraffe: Animals {
    
}
class Crocodile: Reptiles {
    
}

class Reptiles: Quadrupeds {
    
}

class Quadrupeds: Animals {
    
}
class Animals: LivingCreatures {
   
}

class LivingCreatures {
   
}

var people = People()
var monkey: Monkey
var dog: Dog
var giraffe: Giraffe
var crocodile: Crocodile

                //needfix
//var array = [LivingCreatures, Animals, Quadrupeds, Reptiles]
//var a = [people, monkey, monkey]
