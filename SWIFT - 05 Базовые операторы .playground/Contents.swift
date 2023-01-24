import UIKit
//task1
let countDays:Int
let countHours:Int
let countMinutes:Int
let countSecond:Int
countDays = 30 + 28 + 31 + 30 + 31
countHours = countDays * 24
countMinutes = countHours * 60
countSecond = countMinutes * 60
print(countSecond)

//task2
let firstKvartal    = 1 ... 3
let secondKvartal   = 4 ... 6
let thirdKvartal    = 7 ... 9
let fourKvartal     = 10 ... 12
let birthmonth = 6
switch birthmonth {
case firstKvartal:
    print("1 квартал")
case secondKvartal:
    print("2 квартал")
case thirdKvartal:
    print("3 квартал")
case fourKvartal:
    print("4 квартал")
default:
    print("не удалось определить квартал")
}

//task3
let position = (x: 3, y: 2)
if (position.x % 2 == 0) {
    if (position.y % 2 == 0) {
        print("black")
    }
    else {
        print("white")
    }
} else {
    if (position.y % 2 == 0) {
        print("white")
    }
    else {
        print("black")
    }
}
