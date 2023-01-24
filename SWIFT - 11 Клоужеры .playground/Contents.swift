import UIKit
 
let numbers = [1, 2, 5, 7, 8, 19, 22, 30, 32]
func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    var filtered = [Int]()
    for value in array {
        if f(value) {
            filtered.append(value)
        }
    }
    return filtered
}
 

filterArray (array: numbers, f: {(i:Int) -> Bool in
    return i % 2 == 0
})
let a = filterArray(array: numbers, f: {$0 % 1 == 0})
print(a)

let b = filterArray(array: numbers) {$0 % 4 == 0}
print(b)

print("____")

let number2 = [1, 2, 3]
var count = 0
let a4 =  filterArray(array: numbers){ value in
    for include in number2 {
        count += 1
        if include == value {
            return true
        }
    }
    return false
}
print(a4)
print(count)

print("____")
var dict = [Int: Bool]()
for i in number2 {
    dict[i] = true
}
print(dict)
var count2 = 0
let a5 =  filterArray(array: numbers){ value in
    count2 += 1
return dict[value] != nil
}
print(a5)
print(count2)

print("ДЗ")

//task1
let myfunc = {(i:Int) -> Bool in
        return i % 2 == 0
}
myfunc(9)
let myfunc2 = {
    for i in 1...10 {
     print(i)
    }
}
myfunc2()

//task2
var numberUnSort = [1, 22, 21, 10, 18, 17, 18, 27]
var numberSort = numberUnSort.sorted(by: >)
print(numberSort)
numberSort = numberUnSort.sorted(by: <)
print(numberSort)
print("task3")
//task3
var numberFor3Task = [7, 22, 21, 10, 18, 17, 18, 27]
func func3(a: [Int], f : (Int, Int?) -> Bool) -> Int{
    var myNumber : Int? = nil
    count = 0
    for i in a {
        if(f(i, myNumber)){
            count += 1
            myNumber = i
        }
    }
    print(count)
//    if let myNumber {
//        return myNumber
//    }
    return myNumber! ?? 0
}
//func3
print(func3(a: numberFor3Task) {$1 == nil || $0 < $1 ?? 0})

//taks4
let string = "Привет, Валет<Ds<D,s,Б Ывфывфвофывоф ЦВывыфвФВп5у6б4е5пкупю"
var arrayFor4Task: [Character] = []
for i in string {
    arrayFor4Task.append(i)
}

let func4 = {(_ a: [Character]) -> [Character] in
    var arrayFor4TaskSort : [Character] = []
    for i in arrayFor4Task {
        if i == "а" || i == "у" || i == "о" || i == "ы" || i == "э" || i == "я" || i == "ю" || i == "ё" || i == "и" || i == "е"{
            arrayFor4TaskSort.append(i)
        }
    }
    for i in arrayFor4Task {
        if i == "б" || i == "в" || i == "г" || i == "д" || i == "ж" || i == "з" || i == "й" || i == "к" || i == "л" || i == "м" || i == "н" || i == "п" || i == "р" || i == "с" || i == "т" || i == "ф" || i == "х" || i == "ц" || i == "ч" || i == "ш" || i == "щ"{
            arrayFor4TaskSort.append(i)
        }
    }
    for i in arrayFor4Task {
        if i == "," || i == "." || i == "!" || i == " "{
            arrayFor4TaskSort.append(i)
        }
    }
    return arrayFor4TaskSort
}
print(func4(arrayFor4Task))

