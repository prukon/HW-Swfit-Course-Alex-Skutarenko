import UIKit
//import Foundation
class Student1 {
    var firstName: String
    var lastName: String
    var fullName: String {
        return firstName + " " + lastName
    }
    init() {
        self.firstName = ""
        self.lastName = ""
    }
}
class Student2 {
    var firstName = ""
    var lastName = ""
}

class Student3 {
    var firstName: String
    var lastName: String
    
    init(firstName:String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}
class Student4 {
    var middleName: String?
}
class Student5 {
    let maxAge:Int
    init(){
        maxAge = 100
    }
}
class Student6: Student5 {
    override init() {
        //       super.maxAge = 110 выдаст ошибку
        
    }
}

struct Student7 {
    var firstName: String
    var lastName: String
    
    //    если добавляем новый, то он перезаписывает дефолтный конструктор
    init () {
        firstName = ""
        lastName = ""
    }
    
    // поэтому добавляем его вручную
    init(firstName:String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}



let s1 = Student1()
let s2 = Student2()
let s3 = Student3.init(firstName: "a", lastName: "b")
let s5 = Student5()
//s5.maxAge 10 - выдаст ошибку
let s7 = Student7.init(firstName: "c", lastName: "D")



class Human {
    var weight: Int
    var age: Int
    
    //designated инициализатор
    init (weight: Int, age: Int ) {
        self.weight = weight
        self.age = age
    }
    
    //convenience инициализатор
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0 )
    }
    
    convenience init() {
        self.init(weight: 0 )
    }
    func text() {
        
    }
    deinit {
        print("Human  deinizializited")
    }
}
let h1 = Human(weight: 70, age: 26)
let h2 = Human(weight: 0, age: 26)
let h3 = Human()

// часть 2



class Student: Human {
    var firstName: String
    var lastName: String
    init(firstName:String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        //    Дезигнейтет ссыллается только на designated родительского класса, поэтому используется только SUPER
        super.init(weight: 0, age: 0) //Обязательный вызов designated для всех свойств родителя
        text() //вызов метода только после инициазилации (stage 1)
        self.weight = 50
    }
    //    convenience ссыллается только на designated собственного класса, поэтому используется только SELF
    convenience  init(firstName: String) {
        self.init(firstName: firstName, lastName: "")
        self.age = 28
    }
}

let stundent7 = Student(firstName: "Вася")

//Правило 1
//Если в дочернем классе нет собственного designated, то  дочерний класс автоматически унаследует все designated и convenience родителя

//Правило 2
//Если в дочернем классе есть собственный designated, то дочерний класс перестает наследовать все designated и convenience родителя.

//1 способ
//Наследования всех свойств родителя. Наследование работает, потому что нет своего  designated и есть только convenience.
class Doctor: Student {
    var fieldOfStudy = ""
    
    //    init (fieldOfStudy: String) {
    //        self.fieldOfStudy = fieldOfStudy
    //        super.init(firstName: "Doctor", lastName: "House")
    //    }
    
    convenience init(fieldOfStudy: String){
        self.init(firstName: "Doctor", lastName: "House")      //вызываем convenience и используем self, поскольку обращаемся к наследуемому designated внутри класса Doctor
        self.fieldOfStudy = fieldOfStudy
    }
}
var doctor = Doctor.init(fieldOfStudy: "1")
doctor.firstName = "Вася"  //доступны все методы родителя

//2 способ
//Наследования всех свойств родителя через переопределение designated родителя. Наследование работает, потому что переопределен designated родителя.
class Doctor2: Student {
    var fieldOfStudy = ""
    init (fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    }
    //переопределение designated. Это нужно чтобы получить доступ ко всем методам инийциализации родительского класса
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = ""
        super.init(firstName: "", lastName: "")
    }
}
var doctor2 = Doctor2.init(fieldOfStudy: "2")
doctor2.firstName = "Петя" //доступны все методы родителя

//3 способ
class Doctor3: Student {
    var fieldOfStudy: String
    var old : String
//    override convenience init(firstName: String, lastName: String) {
//        self.init(firstName: "Doctor2", lastName: "House2 ")
//    }
     init(fieldOfStudy: String, old: String) {
        self.fieldOfStudy = ""
        self.old = ""
         super.init(firstName: "", lastName: "")
    }
    override convenience init(firstName: String, lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
        self.init(firstName: <#T##String#>, lastName: <#T##String#>)
    }
}




//часть 3

    enum Color: Int {
        case Black
        case White

        //фелебл инийиализатор (может возвращать нил)
        init?(value: Int) {
            switch value {
            case 1: self = Color.Black
            case 2: self = Color.White
            default: return nil
            }
        }
    }
let a = Color(value: -1)
a?.rawValue



struct Size  {
    var width: Int
    var height: Int
    
    init?(width: Int, height: Int){
//        return nil  - можно добавлять и до инициализации
        self.width = width
        if height < 0 {
            return nil
        }
        self.height = height
    }
}

class Friend:Human {
    var name : String
//    var skin : Color = .White //присваиваем значение, поскольку это выполняется в фазе до вызова метода randomColor()
    var skin : Color = {
        let random = Int.random(in: 1...2)
        return Color(value: random)!
    }()
    
//    var lastName :String!
    init?(name: String) {
//        let random = Int.random(in: 1...2)
//        let color = Color(value: random)!
//        self.skin = color
        
        self.name = name
        if name.isEmpty  {
            return nil    //почему работает присвоение нил (2 фаза) если 1 фаза еще не закончена (иницализация  super.init(weight: 0, age: 0))
        }
        super.init(weight: 0, age: 0)
       // skin = randomColor() //использование метода для исключения дублирования кода

    }
    init() {
        self.name = "Hi"

//        let random = Int.random(in: 1...2)
//        let color = Color(value: random)!
//        self.skin = color

        super.init(weight: 0, age: 0)
      //  skin = randomColor() //использование метода для исключения дублирования кода

    }
//    метод переписан на клоужен в объявлении skin
//    func randomColor() -> Color {
//        let random = Int.random(in: 1...2)
//        return Color(value: random)!
//    }
    
    deinit {
        print("Friend deinizializited")
    }
    
}

//var f = Friend(name: "")

class BestFriend: Friend {
    override init(name: String) {
        
        if name.isEmpty {
            super.init()
        } else {
            super.init(name: name)!
        }
    }
    deinit {
        print("BestFriend deinizializited")
    }
}
let b = BestFriend(name: "")
b.name


let f1 = Friend(name: "Вася")
f1!.skin.rawValue
let f2 = Friend(name: "Петя")
f2!.skin.rawValue
let f3 = Friend(name: "Оля")
f3!.skin.rawValue


struct Test {
    var bestFriend : BestFriend? = BestFriend(name: "Vasia")
}

var test: Test? = Test.init()
//test!.bestFriend = nil
test?.bestFriend = nil

var f5 = Friend(name: "")


init(isElectro: Bool){
    self.isElectro = isElectro
}
