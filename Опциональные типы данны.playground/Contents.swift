import UIKit
/*
 2 задание
 если статус код в диапазоне от 200 до 300 искоючительно то  показать меседж, иначе показать еррор месседж
создаьт такой же тюпл в котором статус кода нет. Месседж нил. еррор - содержит ошибку.
разобраться и показать соответствующую строку
*/

//task2
let code:Int =  300
let massage:String? = "ok"
let errorMassage: String? = nil
let statusCode = (code: code, massage: massage, errorMassage: errorMassage)


if statusCode.code == 200 {
    if let massageText:String = statusCode.massage {
        print("Код ответа \(statusCode.code), Сообщение: \(massageText)")
    } else {
        print("Код ответа \(statusCode.code), Сообщение отсутствует")
    }
} else {
    if let errorMassageText:String = statusCode.errorMassage {
        print("Код ответа \(statusCode.code), Сообщение: \(errorMassageText)")
    } else {
        print("Код ответа \(statusCode.code), Сообщение: отсутствует")
    }
}



//task3
/*создать тюпл стутента
 3 задание
3 параметра имя, номер авто, оценка за пред контрольную
 трениться с ? и !
 
 В тюпле не должны бsть данных, должны бтьы нили. Создть 5 штук
 Заполить имена
 Если есть авто - добавить
 Если есть результат (от 0 до 5) контрольной - добавить
 В принте вывести инфу по студенту и был ли он на контрольной  и есть ли у него авто.
 */

var studen1AutoNumber: String? = nil
var studen1workBall: String? = nil
var student1 = (name: "", autoNumber:studen1AutoNumber,workBall:studen1workBall)
var student2 = (name:"", autoNumber:"",workBall:"")

var student : (name: String?, autoNumber: String? ,workBall: String)

student.name = "Вася"
print(student.name)
student.name! = "Вася"
student.name = student.name!
student1.name = "Вася"
if let autoNumber:String = student1.autoNumber {
    print(autoNumber)
} else {
    print("У студента нет авто")
}
if let workBall:String = student1.workBall {
    print(workBall)
} else {
    print("Студент не сдавал контрольную работу")
}

let a = Array(3...6)
for a in a {
    print(a)
}
