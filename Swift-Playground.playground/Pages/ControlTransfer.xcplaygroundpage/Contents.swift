import Foundation

/*
 Control Transfer in Swift
 - continue
 - break
 - fallthrough
 */

// continue
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for input in puzzleInput {
    if charactersToRemove.contains(input) {
        continue
    }
    puzzleOutput.append(input)
}
print(puzzleOutput)

print("=======================================================")

// break
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
   possibleIntegerValue = 1
case "2", "٢", "二", "๒":
   possibleIntegerValue = 2
case "3", "٣", "三", "๓":
   possibleIntegerValue = 3
case "4", "٤", "四", "๔":
   possibleIntegerValue = 4
default:
   break
}
if let integerValue = possibleIntegerValue {
   print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
   print("An integer value could not be found for \(numberSymbol).")
}

print("=======================================================")

// fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is "
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description.append("a prime number, and also ")
    fallthrough
default:
    description.append("an integer.")
}
print(description)


