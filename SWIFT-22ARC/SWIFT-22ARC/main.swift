//
//  main.swift
//  SWIFT-22ARC
//
//  Created by Evgeniy Ustyan on 14.02.2023.
//

import Foundation

var playground = true

class Student {
    deinit {
        print("goodbay student")
    }
}
class Teacher {
    deinit {
        print("goodbay teacher")
    }
}
var teacher : Teacher?

var closure3:  (() -> ())?
if playground {

    var student = Student() //будет уничтожен после выхода из оператора if
     teacher = Teacher() //не будет уничтожен после выхода из оператора if поскольку был объявление до оператора if
    
    closure3 = {
        print(teacher)
    }
    print("end playground")
}

print("end")


class Human {
    var name = "a"
}
var h = Human()
var x = 10
var y = 20

var closure : () ->() = {
    [x,y] //захват значений x,y. Теперь при их изменении, клоужер будет вызывать первоначальные значения переменных
    print("\(x) \(y )")
}

var closure2: (Int)  -> (Int) = {[x,y,h] (a: Int)-> Int in //захват указывает перед параметрами
    print("\(x) \(y) \(h.name)")
    return a
}
//closure()
closure2(1)
x = 30
y = 40
h.name = "b"

//closure()
closure2(1)
