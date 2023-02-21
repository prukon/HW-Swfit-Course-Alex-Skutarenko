import UIKit

//255
//0b11111111
//0xff


extension Int8 {
    func binary () -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result  = (set ? "1" : "0") + result
        }
        return result
    }
}

extension UInt8 {
    func binary () -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result  = (set ? "1" : "0") + result
        }
        return result
    }
}

var c = 10
c = c << 1 //сдвиг бита. Умножает число на 2
c
c = c << 1
c

var a : UInt8 = 57
a.binary()
a = a + 2
a.binary()

a = 0b11111111
a = a &+ 1   // переполнение бит и вывод минимального числа - нуля
a.binary()



var b :Int8

b = 0b1111111
b = b &+ 1 // переполнение бит и вывод минимального числа (отрицательного)
b = -1
b.binary()


b = b &- 1
b.binary()

//----

var d : UInt8
a = 0b00110011
d = 0b11100001

//Сложение побитовое
a.binary()
d.binary()
(a | d).binary()

//Побитовое умножение (битовое И)
a.binary()
d.binary()
(a & d).binary()

//Сумма по модулю (исключающее ИЛИ)
a.binary()
d.binary()
(a ^ d).binary()

//Инверсия
a.binary()
(~a) .binary()


//Проверка установки бита
d = 0b000000100
a.binary()
d.binary()
(a & d) //если 0 то не установлен

//Установка бита
d = 0b000000100
a.binary()
d.binary()
(a | d).binary()
 
//Установка если не стоит. Сброс если установлен.
d = 0b010000010
a.binary()
d.binary()
(a ^ d).binary()

//Сброс бита. Проверка того, что бит сброшен. Если 1 то 0. Если 0 то 0.
d = 0b010011000
a.binary()
d.binary()
(a & ~d).binary()


//Пример хранение чеклиста в битах
enum Checklist: UInt8 {
case Bread   = 0b00000001
case Chicken = 0b00000010
case Apples  = 0b00000100
case Pears   = 0b00001000
}

let checklist: UInt8 = 0b00001001
//проверка установки чеклиста
let bread =   checklist & Checklist.Bread.rawValue
let checken = checklist & Checklist.Chicken.rawValue

//HW

