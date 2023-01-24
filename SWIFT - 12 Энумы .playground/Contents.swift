import UIKit
//task1
enum Command :String {
    case White = "White"
    case Black = "Black"
}
enum Chess {
    case Rook (Command, column: Character, line: Int, name: String)
    case Knight (Command, column: Character, line: Int, name: String)
    case Bishop (Command, column: Character, line: Int, name: String)
    case Qeen (Command, column: Character, line: Int, name: String)
    case King (Command, column: Character, line: Int, name: String)
    case Pawn (Command, column: Character, line: Int, name: String)
}
var whiteKing : Chess = .King(Command.White, column: "A", line: 1, name: "King")
var blackKing : Chess = .King(Command.Black, column: "H", line: 8, name: "King")
var blackQeen : Chess = .Qeen(Command.Black, column: "A", line: 8, name: "Qeen")
var blackRook : Chess = .Rook(Command.Black, column: "B", line: 8, name: "Rook")
//task2
var chessArray: [Chess] = []
chessArray.append(whiteKing)
chessArray.append(blackKing)
chessArray.append(blackQeen)
chessArray.append(blackRook)
func chessTarget(figure: Chess) {
    switch figure {
    case .King(let Command, let column, let line, let name):
        print("Фигура: \(name)(\(Command.self)), Позиция: \(column)-\(line)")
  
    case .Rook(let Command, let column, let line, let name):
        print("Фигура: \(name)(\(Command.self)), Позиция: \(column)-\(line)")

    case .Knight(let Command, let column, let line, let name):
        print("Фигура: \(name)(\(Command.self)), Позиция: \(column)-\(line)")
   
    case .Bishop(_, column: let column, line: let line, name: let name):
        print("Фигура: \(name)(\(Command.self)), Позиция: \(column)-\(line)")
   
    case .Qeen(let Command, let column, let line, let name):
        print("Фигура: \(name)(\(Command.self)), Позиция: \(column)-\(line)")
   
    case .Pawn(let Command, let column, let line, let name):
        print("Фигура: \(name)(\(Command.self)), Позиция: \(column)-\(line)")
    }
}
func parseChess(ChessArray: [Chess]) {
    for i in ChessArray {
        chessTarget(figure: i)
    }
}
parseChess(ChessArray: chessArray)
//task4
func moveChess(chess: inout Chess, step: (column: Character, line: Int)) -> Chess {
    switch chess {
    case .Qeen(let Command, _, _, let name):
        chess = .Qeen(Command, column: step.column, line: step.line, name: name)
   
    case .Rook(let Command, _, _, let name):
        chess = .Rook(Command, column: step.column, line: step.line, name: name)
   
    case .Knight(let Command, _, _, let name):
        chess = .Knight(Command, column: step.column, line: step.line, name: name)
   
    case .Bishop(let Command, _, _, let name):
        chess = .Bishop(Command, column: step.column, line: step.line, name: name)

    case .King(let Command, _, _, let name):
        chess = .King(Command, column: step.column, line: step.line, name: name)

    case .Pawn(let Command, _, _, let name):
        chess = .Pawn(Command, column: step.column, line: step.line, name: name)

    }
    return chess
}
print(blackQeen)
moveChess(chess: &blackQeen, step: ("A",1))
print(blackQeen)
print(blackKing)
moveChess(chess: &blackKing, step: ("B",2))
print(blackKing)
