import UIKit

let dayMonth = [30 ,28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for day in dayMonth {
    print(day)
}
let nameMonth = ["Январь" ,"Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
for (index, name) in nameMonth.enumerated() {
    print("\(name) - \(dayMonth[index])")
}
var resultMonth : [(month: String, day: Int)] = []
for (index, name) in nameMonth.enumerated() {
    resultMonth.append(((name), (dayMonth[index])))
}
print(resultMonth)

print("____")

let date = (1, "Июнь")
var mounthCount = 0
var dayCount = 0
for i in resultMonth {
    mounthCount += 1
    dayCount = dayCount + i.day
    if i.month == date.1{
    dayCount = dayCount + date.0
        break
    }
}
print( "Дней: \(dayCount)")
