import UIKit
//import  Foundation

class Address {
    var street = "Lenina"
    var number = 2
    var city = "Moskow"
    var country = "Russia"
}

struct Garrage {
    var size = 2
}

class House {
    var room = 1
    var address = Address()
    var garage : Garrage? = Garrage()
}

class Car {
    var model = "Niva"
    func start() {
    }
}

class Person {
    var cars: [Car]? = [Car()]
    var house: House? = House()
}

let p = Person()

//Опциональная цепочка
p.house?.garage?.size


//Проверка значения
if  (p.house?.garage?.size = 3) != nil {
    print("upgrade")
} else {
    print("failure ")
}

(p.cars?[0].model)

// ------- Приведение типов

class Sumbol {
    
}

class A: Sumbol {
    func aa() {
         
    }
}

class B: Sumbol {
    func bb() {
         
    }
}

//Any
//AnyObject

let array : [Any] = [A(), B(), Sumbol(), A(), B(), A(), NSObject(), "a", 5, {() -> () in return  }]
//let array : [Sumbol] = [A(), B(), Sumbol(), A(), B(), A()]

var aCount = 0
var bCount = 0
var sCount = 0


for value in array {
    if value is A {
        aCount += 1
    } else if value is B {
        bCount += 1
    }  else /*if value is Sumbol */ {
        sCount += 1
    }
    
    if value is String {
        print("String")
    }
    if value is () -> () {
        print("() -> ()")
    }
    
    //инициализировали функцю из клоужера
    if let fun =   value as? () -> () {
        print(" init func () -> ()")
        fun()
    }
    
    
//    инициализация однотипных значений в переменную
    if let a = value as? A {
        a.aa()
    } else if let b = value as? B {
        b.bb()
    }
     
//    Опасный метод без опционала
    // let a = value as A
}

