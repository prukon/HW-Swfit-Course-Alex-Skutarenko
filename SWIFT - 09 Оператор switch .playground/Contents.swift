import UIKit

let poem = """
Мороз и солнце; день чудесный!
Еще ты дремлешь, друг прелестный —
Пора, красавица, проснись:
Открой сомкнуты негой взоры
Навстречу северной Авроры,
Звездою севера явись!

Вечор, ты помнишь, вьюга злилась,
На мутном небе мгла носилась;
Луна, как бледное пятно,
Сквозь тучи мрачные желтела,
И ты печальная сидела —
А нынче… погляди в окно:

Под голубыми небесами
Великолепными коврами,
Блестя на солнце, снег лежит;
Прозрачный лес один чернеет,
И ель сквозь иней зеленеет,
И речка подо льдом блестит.

Вся комната янтарным блеском
Озарена. Веселым треском
Трещит затопленная печь.
Приятно думать у лежанки.
Но знаешь: не велеть ли в санки
Кобылку бурую запречь?

Скользя по утреннему снегу,
Друг милый, предадимся бегу
Нетерпеливого коня
И навестим поля пустые,
Леса, недавно столь густые,
И берег, милый для меня.
"""
var whitespace = 0
var comma = 0
for i in poem {
    switch i {
    case " ": whitespace += 1
    case ",": comma += 1
    default:
        break
    }
}

//task2
var age = 33
switch age {
case 0...2: print("Младенец")
case 3...6: print("Ребенок")
case 7...16: print("Школа")
case 17...22: print("Университет")
case 23...45: print("Работа")
case 45...: print("Песия")
default:
    break
}

//task3
var student = (surname: "Устьян", name: "Артур",patronymic: "Петрович")
switch student {
case let (_,_,z) where z.first == "И" : print("\(student.name) \(student.patronymic)")
case let (_,y,_) where y.first == "Е" : print(student.name)
case let (x,_,_) where x.first == "З" : print(student.surname)
    
default: print("\(student.surname) \(student.name) \(student.patronymic)")
}
student.surname.first

//task4

let ship1 = [("a", 1)]
let ship2 = [("b", 4),("b", 5)]
let ship3 = [("e", 1),("e", 2)]
let target = [("b",2)]
switch target {
case (let ship1  where target == ship1:  print("Ранение")
      default
      break
      }
