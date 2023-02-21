import UIKit
import Foundation
//task1
struct Birdsday{
    var day : Int
    var month : Int
    var year : Int

}

struct Students {
    var firsName : String {  // Stored Properties

//        appserver
        willSet(newValue) {
            print("firsName" + firsName)
            print("newValue" + newValue)
        }
        didSet(oldValue) {
            print("firsName" + firsName)
            print("oldValue" + oldValue)
            
            firsName = firsName.capitalized
        }
    }
    var lastName : String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    var fullName : String { // computed properties
//        return firsName + " " + lastName
        get {
            return firsName + " " + lastName
        }
        set {
            print(newValue)
            let words = newValue.components(separatedBy: " ")
            if words.count > 0 {
                firsName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
    var birdsday : Birdsday {
        didSet {
//
        }
    }
    var old :Int {
        get {
            var year  : Int = 2023
            var month : Int = 1
            var day   : Int = 12
            
            day = day - birdsday.day
            if day < 0 {
                month -= 1
            }
            month = month - birdsday.month
            if month < 0 {
                year -= 1
            }
            year = year - birdsday.year

            return year
        }
        set {
        }
    }
    var expStudy: Int {
        get {
            var expStudy : Int
            expStudy = old - 6
            if expStudy < 0 {
                expStudy = 0
            }
            return expStudy
        }
        set {
            
        }
    }
}
var student1 =  Students(firsName: "Alex", lastName: "Ustyan", birdsday : Birdsday(day: 12, month: 1, year: 1989))
//print(student1)
student1.firsName
student1.lastName
student1.fullName
student1.fullName = "петр ОСИПОВ"
student1.fullName
student1.old
student1.expStudy
 
 
//Birdsday = Birdsday(day: 22, month: 5, year: 1989)

//task2
struct DescriptionFiles {
    static var directoryPath = "/home/tasks"
    enum typeFiles {
    case hidden
    case vision
    }
    var name : String
    var filePath: String {
        return ("\(DescriptionFiles.directoryPath)/\(name)")
    }
    static var maxSize = 100
    var fileSize: Int {
         didSet {
             if fileSize > DescriptionFiles.maxSize {
                 fileSize = oldValue
             }
         }
     }
    
    var fileType : typeFiles
     var fileContent : String
}

var file1 : DescriptionFiles = .init(name: "photo.jpg", fileSize: 10,  fileType: .vision, fileContent: "Аватар")
var file2 : DescriptionFiles = .init(name: "photo2.jpg", fileSize: 100, fileType: .vision, fileContent: "Аватар")
print(file1.filePath)
print(file2.filePath)

//task3
enum ColorScheme {
//    static var countColor = CountableRange(ColorScheme)
    static var startColor = red
    static var finishColor = blue
    
    
    case red (red: String, green: String, blue: String)
    case blue (red: String, green: String, blue: String)
    case white (red: String, green: String, blue: String)
    case green (red: String, green: String, blue: String)
    case dark (red: String, green: String, blue: String)
    case yellow (red: String, green: String, blue: String)
    case orange (red: String, green: String, blue: String)
    case brown (red: String, green: String, blue: String)
    case gray (red: String, green: String, blue: String)
}
print ("----")
//task4
class Human {
    var name: String {
        
            didSet {
                if name.count >  20 {
                    name = oldValue
                }
        
        }
    }
    var secondName: String
    var age: Int
   
        
    class var maxHeight: Double {
        return 100
    }
    var height: Double {
        didSet {                                   //needFix
            if height > Human.maxHeight {
                height = oldValue
            }
        }
    }
    var weight: Double {
        didSet {                                    //needFix
            if weight > 20 {
                weight = oldValue
            }
        }
    }
    init (name:String, secondName: String, age: Int, height: Double, weight: Double) {
        self.name = name
        self.secondName = secondName
        self.age  = age
        self.height  = height
        self.weight = weight
    }
}
var person1 : Human = .init(name: "Вася", secondName: "Иванов", age: 22, height: 1270, weight: 60)
print(person1.height = 300)
person1.height = 300
person1.height = 40
print(person1.height)
print(person1.weight)
person1.name = "123sd ada ds ds dssd adal ka ladsldksa jgej j"
person1.name
