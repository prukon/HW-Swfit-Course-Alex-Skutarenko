import UIKit
//task1
func heard () -> String{
    let heard = "♥"
    return heard
}
func love () -> String{
    let love = "💑"
    return love
}
func messege () -> String{
    let messege = "💌"
    return messege
}
print("\(messege()) + \(love()) = \(heard())")
//task2
func chess(x: Int, y: Int) -> String {
//    if let x, let y {
        return (x % 2 == y  % 2) ? "Black" : "White"
//    }
//    var result = ""
//    if x % 2 == 0 {
//        if (y % 2 == 0) {
//            result = "black"
//        }
//        else {
//            result = "white"
//        }
//    } else {
//        if (y % 2 == 0) {
//            result = "white"
//        }
//        else {
//            result = "black"
//        }
//    }
//    return result
}
print(chess(x:1, y: 2))

//task3
//var arr = []
