//: [Previous](@previous)

import Foundation

// This is Enumeration in Swift
enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionHead = CompassPoint.west
directionHead = .east

switch directionHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

let somePlanet = Planet.earth

switch somePlanet {
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}

print("=======================================================")

// Iterating over Enumeration Cases
enum Beverage : CaseIterable {
    case coffee, tea, jus
}
let numberOfChoice = Beverage.allCases.count
print("\(numberOfChoice) are available")

Beverage.allCases.forEach { beverage in
    print(beverage)
}

print("=======================================================")

// Associated Value
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(1, 24984, 13758, 9)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR Code : \(productCode).")
}

productBarcode = .qrCode("iOS Developer")

switch productBarcode {
case let .upc( numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR Code : \(productCode).")
}

print("=======================================================")

// Raw Values (Default Value)
enum ASCIIControllCharacter : Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

// Implicitly Assigned Raw Value
enum PlanetInteger : Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
print("Planet = \(PlanetInteger.earth.rawValue)")

let positionToFind = 11
if let somePlanet = PlanetInteger(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}

enum CompassPointString: String {
   case north, south, east, west
}

print("Compass Point = \(CompassPointString.east.rawValue)")

print("=======================================================")

// Recursive Enumeration
indirect enum ArithmeticExpression {
    case number(Int)
    case additional(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let two = ArithmeticExpression.number(2)
let four = ArithmeticExpression.number(4)
let five = ArithmeticExpression.number(5)
let sum = ArithmeticExpression.additional(four, five)
let product = ArithmeticExpression.multiplication(sum, two)

func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .additional(left, right):
        return evaluate(expression: left) + evaluate(expression: right)
    case let .multiplication(left, right):
        return evaluate(expression: left) * evaluate(expression: right)
    }
}

print("Recursive Enumeration = \(evaluate(expression: product))")
