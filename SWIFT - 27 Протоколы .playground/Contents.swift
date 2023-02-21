import UIKit

protocol Priority {
    var order: Int { get }
}


protocol Entryname: Priority {
    var label: String {get}
}

class Person: Entryname {
    var firstName: String
    var lastName: String
    var fullName: String {
        return firstName + " " + lastName
    }
    var order = 1
    
    var label: String {
        return fullName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}

class Animal {
    
}

class Cow: Animal, Entryname { //сначала указывается родительский класс, затем протокол
    var name: String?
    var label: String {
        return "Нет  имени"
    }
    var order = 2
}

struct Grass: Entryname {
    var type: String
    var label: String {
        return "Grass: " +  type
    }
    var order = 3
}
var person1 = Person(firstName: "Вася", lastName: "Иванов")
var person2 = Person(firstName: "Петя", lastName: "Петров")
var person3 = Person(firstName: "Оля", lastName: "Сидорова")

var cow1 = Cow()
cow1.name = "Буренка"
//

var grass1 = Grass(type: "Бермуда")
var grass2 = Grass(type: "Августина")
//
var array: [Entryname] = [cow1, grass1, grass2, person1, person2, person3]
//
//
func printFarm (array: [Entryname]){
    
    //    array.sort($0, $1)
//    array.sort{(a, b in
//                if a.order ==  b.order {
//        return a.label.lowercase < b.label.lowercase
//        else {
//            return a.order < b.order
//        }
//    }
//    )}
    for value in array {
        print(value.label)
    }
}
printFarm(array: array)
