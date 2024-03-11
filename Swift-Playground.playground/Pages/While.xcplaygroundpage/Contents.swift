import Foundation

// This is While in Swift

// Snakes and Ladders game
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02 // Ladder
board[14] = -10; board[19] = -11; board[22] = -2; board[24] = -08 // Snake

print("BOARD : \(board)")

var square = 0
var diceRoll = 0

while square < finalSquare {
    // Shake the dice
    diceRoll += 1
    
    // If the dice equals 7, it will automatically change to 1 again
    if diceRoll == 7 { diceRoll = 1 }
    
    // Shifts the character according to the dice obtained
    square += diceRoll
    
    // If you are still on the game board, then check whether the character meets snakes and ladders or not.
    if square < board.count {
        square += board[square]
    }
    
    print(square)
}

// If the character has crossed the game board, the while loop will stop.
print("Game over!")
