import Foundation

// This is Conditional Statement in Swift

// if statement
var temperatureInCelcius = 20
if temperatureInCelcius <= 25 {
    print("It's very cold. Consider wearing a scraft.")
}

print("=======================================================")

temperatureInCelcius = 28
if temperatureInCelcius <= 25 {
    print("It's very cold. Consider wearing a scraft.")
} else {
    print("It's not that cold. Wear a t-shirt")
}

print("=======================================================")

temperatureInCelcius = 35
if temperatureInCelcius <= 25 {
    print("It's very cold. Consider wearing a scraft.")
} else if temperatureInCelcius >= 30 {
    print("It's really warm. Don't forget to wear sunscreen")
} else {
    print("It's not that cold. Wear a t-shirt")
}

print("=======================================================")

// switch statement
var someCharacter = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}

print("=======================================================")

let anotherCharacter = "a"
switch anotherCharacter {
case "a", "A":
    print("The first letter of the alphabet")
default:
    print("Some other character")
}

print("=======================================================")

let approximateCount = 62
let countedThings = "moons orbiting saturn"
let naturalCount: String

switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThings)")

print("=======================================================")

let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin")
case (_,0):
    print("\(somePoint) is on the x-axis")
case (0,_):
    print("\(somePoint) is on the y-axis")
case (-2...2,-2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

print("=======================================================")

let anotherPont = (2,0)
switch anotherPont {
case (let x, 0):
    print("on the x-axis with a x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let(x, y):
    print("somewhere else at (\(x), \(y))")
}

print("=======================================================")

let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

print("=======================================================")

someCharacter = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\"\(someCharacter)\" is a vowel")
case "b", "c", "d", "f", "g", "h","j", "k",
    "l", "m","n", "p", "q", "r", "s", "t",
    "v", "w", "x", "y", "z":
    print("\"\(someCharacter)\" is a consonant")
default:
    print("\"\(someCharacter)\" is not a vowel and consonant")
}
