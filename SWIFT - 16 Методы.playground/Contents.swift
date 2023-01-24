import UIKit
//taks1
enum Move {
    case left
    case right
    case top
    case down
}
struct Room {
    var height: Int
    var width: Int
    
    func showRoom () {
        var roomHeight: [Character] = []
        for _ in 0 ..< height {
            var line: [Character] = []
            for _ in 0 ..< width {
                line.append(" ")
            }
            roomHeight += line
        }
        print(roomHeight)
    }
}
var room1: Room = .init(height: 10, width: 10)

func holdBorders (x:Int ,y:Int, room: Room) -> (x:Int, y:Int) {
    var resultPosition: (x: Int,y: Int) = (x, y)
    if x > room.width   {
        resultPosition.x = room.width
    }
    if x <  1 {
        resultPosition.x = 1
    }
    if y >  room.height {
        resultPosition.y = room.height
    }
    if y <  1 {
        resultPosition.y = 1
    }
    return (resultPosition)
}


struct Pearson {
    var name: String
    var position : (x:Int ,y:Int) = (1, 1) {
        didSet {
            position.x = holdBorders(x: position.x, y: position.y, room: room1).x
            position.y = holdBorders(x: position.x, y: position.y, room: room1).y
        }
    }
    func  giveBox (){
        if position.x == box1.position.x {
            box1.addMove(moveTo: Move.left)
        }
        if position.x == box1.position.x {
            box1.addMove(moveTo: Move.right)
        }
        if position.y == box1.position.y {
            box1.addMove(moveTo: Move.top)
        }
        if position.y == box1.position.y {
            box1.addMove(moveTo: Move.down)
        }
    }
    mutating func addMove(moveTo direction: Move) -> (Int,Int){
        switch direction {
        case Move.left:
            if position.x == 2 && box1.position.x == 1 {
                 break
            } else {
                position.x = self.position.x-1
            }
            giveBox()
        case Move.right:
            if position.x == 9 && box1.position.x == 10 {
                 break
            } else {
                position.x = self.position.x+1
            }
            giveBox()
        case Move.top:
            if position.y == 9 && box1.position.y == 10 {
                 break
            } else {
                position.y = self.position.y+1
            }
            giveBox()
            if position.y == box1.position.y {
                box1.addMove(moveTo: Move.top)
            }
        case Move.down:
            if position.y == 2 && box1.position.y == 1 {
                 break
            } else {
                position.y = self.position.y-1
            }
            giveBox()
        }
        return self.position
    }
    init(name: String, position: (Int, Int)) {
        self.name = name
        self.position = position
    }
}
struct Box {
    var position : (x:Int ,y:Int) {
        didSet {
            position.x = holdBorders(x: position.x, y: position.y, room: room1).x
            position.y = holdBorders(x: position.x, y: position.y, room: room1).y
        }
    }
    mutating func addMove(moveTo direction: Move) -> (Int,Int){
        switch direction {
        case Move.left:
            position.x = self.position.x-1
        case Move.right:
            position.x = self.position.x+1
        case Move.top:
            position.y = self.position.y+1
        case Move.down:
            position.y = self.position.y-1
        }
//        print(self.position)
        return self.position
    }
}
struct Target {
    var position : (x:Int ,y:Int)
}

var box1: Box = .init(position: (x: 5, y: 1))
var pearson2: Pearson = .init(name: "Вася", position: (10,1))

pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
pearson2.addMove(moveTo:Move.left)
print("\(pearson2.position) - Person\n\(box1.position) - Box\n--\n")
