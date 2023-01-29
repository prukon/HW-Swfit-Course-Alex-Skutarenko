import UIKit

enum SpaceType: String {
    case empty = "⬜"
    case o = "⭕"
    case x = "❌"
}
class Zone{
    let size: Int
    var array = [[SpaceType]]()
    init(size: Int){
        self.size = size
    }
    func create(){
        print("Create new Tic Tac Toe")
        for _ in 0..<size {
            let line = Array(repeating: SpaceType.empty, count: size)
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
    subscript (x: Int, y: Int) -> SpaceType {
        get {
            if x < 0 || y < 0 || x >= size || y >= size {
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
let zone = Zone(size: 3)
zone.create()
zone.show()
zone[1,1] = .x
zone.show()
zone[0,2] = .o
zone.show()
zone[1,0] = .x
zone.show()
zone[0,0] = .o
zone.show()
zone[1,2] = .x
zone.show()
