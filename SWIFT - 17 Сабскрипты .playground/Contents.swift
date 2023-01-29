import UIKit
enum Type: String {
case x = "❌"
case o = "⭕"
case empty = "⬜"
}

struct Field {
    let size: Int
    var array = [[Type]]()
    var dict: [String: String] = [:]
    init(size: Int){
        self.size = size
    }
    mutating func create(){
        print("Create new Tic Tac Toe")
        for _ in 0..<size {
            let line = Array(repeating: Type.empty, count: size)
            array.append(line)
        }
    }
    func show(){
        for line in array{
            var stringLine = ""
            for character in line{
                stringLine += character.rawValue
            }
            print(stringLine)
        }
    }
    subscript (x: Int, y: Int) -> Type {
        get {
            if (x < 0 || y < 0 || x >= size || y >= size)  {
                return .empty
            }
            return array[y][x]
         }
        set {
            print("\(newValue.rawValue) - (\(x), \(y))")
            if !(x < 0 || y < 0 || x >= size || y >= size || newValue == .empty || array[y][x] != .empty) {
                array[y][x] = newValue
            }
        }
    }
}

var field :Field = .init(size: 3)
field.create()
field.show()
field[1,1] = .x
field.show()
field[1,0] = .o
field.show()
