import UIKit
//task1
class Student {
    var name: String
    var secondName: String
    var birdYear: Int
    var avgGrades: Double
    init(name: String, secondName: String, birdYear: Int, avgGrades:Double){
        self.name = name
        self.secondName = secondName
        self.birdYear = birdYear
        self.avgGrades = avgGrades
    }
}
var student1 = Student(name: "Петя", secondName: "Иванов", birdYear: 1989, avgGrades: 4.5)
var student2 = Student(name: "Катя", secondName: "Фролова", birdYear: 1990, avgGrades: 4.8)
var student3 = Student(name: "Лена", secondName: "Фролова", birdYear: 1992, avgGrades: 4.2)

var jornalStudents : [Student] = []
jornalStudents.append(student1)
jornalStudents.append(student2)
jornalStudents.append(student3)

func showJornalStudent(jornalStudents: [Student]){
//    jornalStudents.sorted {birdYear, secondName in
//        true}
//    print(jornalStudents)
//    jornalStudents.sorted(by: { $0.avgGrades < $1.avgGrades})
//    print(jornalStudents)
    for (i, j) in jornalStudents.enumerated() {
        print("\(i+1). \(j.name) \(j.secondName), \(j.birdYear), \(j.avgGrades)")
    }
}
showJornalStudent(jornalStudents: jornalStudents)
var a  = jornalStudents
print(a[0].name)
a[0].name = "Игорь"
print(a[0].name)



