import UIKit
//task1
var a: String? = "5"
let b: String? = "2"
let c: String? = nil
let d: String? = "3"
var summ = 0
var IntA: Int = 0
var summString: String
if let a = a {
    IntA = Int(a) ?? 0
}
var IntB: Int = 0
if let b = b {
    IntB = Int(b) ?? 0
}
var IntC: Int = 0
if let c = c {
    IntC = Int(c) ?? 0
}
var IntD: Int = 0
if let d = d {
    IntD = Int(d) ?? 0
}
summ = IntA + IntB + IntC + IntD
print("\(IntA) + \(IntB) + \(c) + \(IntD) = \(summ)")
print(IntA, "+" , IntB, "+" , c, "+" , IntD, "=" , summ)

//task2

var curCharapter:Character = "Z"
var  alfabet = ("ABCDEFGHIKLMNOPQRSTVXYZ")

for (i, a) in alfabet.enumerated() {
//    print(i,a)
    if a == curCharapter {
        print(i)
    }
}
