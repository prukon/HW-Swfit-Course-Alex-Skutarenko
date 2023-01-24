import UIKit
//task1
var dict = ["Иванов Иван": 4, "Петров Петр": 3, "Сидоров Алексей": 5, "Попов Коля": 4, "Уваров Дима": 3]
dict["Петров Петр"] = 4
dict["Уваров Дима"] = 5
print(dict)
dict["Фролова Катя"] = 4
dict["Петрова Юлия"] = 5
print(dict)
dict.removeValue(forKey: "Иванов Иван")
print(dict)
var sumScore = 0
var avgScore:Double = 0
for i in dict {
    sumScore += i.value
    avgScore = Double(sumScore)/Double(dict.count)
}
print(sumScore)
print(avgScore)
//task2
let month = ["Январь": 30 ,"Февраль": 28, "Март": 31, "Апрель": 30, "Май": 31, "Июнь": 30, "Июль": 31, "Август": 31, "Сентябрь": 30, "Октябрь": 31, "Ноябрь": 30, "Декабрь": 31]
//print(month)
var monthTuple : [(String, Int)] = []
for i in month {
     monthTuple += [(i.key,i.value)]
}
print(monthTuple)
print("____")
for i in month {
    print("\(i.key) \(i.value)")
}
//task3
var shess : [String: Bool]  = ["" : true]
    var x : String = ""
    var y : Bool
    var n : String = ""
    var par : Bool = true
    for i in 1...8 {
        if i == 1 {
            n = "a"
        } else if i == 2{
            n = "b"
        }else if i == 3{
            n = "c"
        }else if i == 4{
            n = "d"
        }else if i == 5{
            n = "e"
        }else if i == 6{
            n = "f"
        }else if i == 7{
            n = "g"
        }else if i == 8{
            n = "h"
        }
        for j in 1...8 {
            x = n + String(j)
            if i % 2 == 0 {
                if j % 2 == 0 {
                    par = true
                } else{
                    par = false
                }
            } else {
                par = false
            }
            shess[x] = par
        }
    }
print(shess)
