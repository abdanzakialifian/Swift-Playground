import Foundation

// This is Repeat While in Swift

// Snakes and Ladders game
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02 // Ladder
board[14] = -10; board[19] = -11; board[22] = -2; board[24] = -08 // Snake

print("BOARD : \(board)")

var square = 0
var diceRoll = 0

repeat {
    // Move up or down for snakes or ladders.
    square += board[square]
    
    // Adds the dice value
    diceRoll += 1
    
    if diceRoll == 7 { diceRoll = 1 }
    
    // Move with existing dice.
    square += diceRoll
    
    print(square)
} while square < finalSquare

print("Game over!")
            
