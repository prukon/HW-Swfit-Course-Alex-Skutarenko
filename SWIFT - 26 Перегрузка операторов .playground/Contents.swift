import UIKit

struct Point {
    var x: Int
    var y: Int
}

var p1 = Point(x: 2, y: 3)
var p2 = Point(x: 3, y: 5)

//переопределие оператора +
func + (a: Point, b: Point)-> Point {
    return Point(x: a.x + b.x, y: a.y + b.y)
}
p1 + p2

//переопределие оператора *
func * (a: Point, b: Point)-> Point {
    return Point(x: a.x * b.x, y: a.y * b.y)
}
p1 * p2

//переопределие оператора +=
func += ( a: inout Point, b: Point) { //needFix
  a = a + b
}
//p1 += p2

//переопределие оператора ==
func == ( a: inout Point, b: Point) -> Bool{
    return a.x == b.x && a.y == b.y
}
p1 == p2

//переопределие оператора ++
var i = 5
i += 1

//Создание оператора %%%
infix operator %%%

func %%% ( a: inout Point, b: Point) -> Point {
    a.x += b.y
    a.y -= b.x
    return a
}
p1
p2
p1 %%% p2

//Создание оператора ** c указанием приоритета и ассоциативности
precedencegroup myPrecedenceGroupName {
    //higherThan: LogicalConjunctionPrecedence // смотреть можно в документации
    lowerThan: AdditionPrecedence // тут можно или higherThan или lowerThan
    //higherThan: AdditionPrecedence
    associativity: left // right or none
    assignment: false// or true - поведение как у группы assignment операторов присвоения относительно optional chaining (опциональной цепочки) или как у всех остальных
}

infix operator ** : myPrecedenceGroupName

func ** (a: Point, b: Point) -> Point {
    return Point (x: 2 * (a.x + b.x), y: 2 * (a.y + b.y))
 }
