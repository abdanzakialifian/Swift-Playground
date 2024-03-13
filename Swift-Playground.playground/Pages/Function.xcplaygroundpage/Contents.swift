import Foundation

// This is Function in Swift
func greet(person: String) -> String {
    let greeting = "Hello, \(person)!"
    return greeting
}
print(greet(person: "Abdan Zaki Alifian"))

print("=======================================================")

func sayHelloSwift() -> String {
    return "Hello, Swift!"
}
print(sayHelloSwift())

print("=======================================================")

func greet(person: String, isAlreadyGreeted: Bool) -> String {
    return if isAlreadyGreeted {
        "Hello again, \(person)"
    } else {
        "Hello, \(person)!"
    }
}
print(greet(person: "Abdan Zaki Alifian", isAlreadyGreeted: true))

print("=======================================================")

func greet2(person: String) {
    print("Hello, \(person)")
}
greet2(person: "Abdan Zaki Alifian")

print("=======================================================")

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    guard !array.isEmpty else {
        return nil
    }
    
    var currentMin = array.first ?? 0
    var currentMax = array.first ?? 0
    
    for value in array {
        if value < currentMin {
            currentMin = value
        }
        
        if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

if let bounds = minMax(array: [201, 8, -6, 2, 109, 3, 71, -10]) {
    print("Min is \(bounds.min) and Max is \(bounds.max)")
}

if let emptyBounds = minMax(array: []) {
    print("Min is \(emptyBounds.min) and Max is \(emptyBounds.max)")
} else {
    print("emptyBound is empty.")
}

print("=======================================================")

// no need for key return
func greet3(person: String) -> String {
    "Hello, \(person)!"
}
print(greet3(person: "Abdan Zaki Alifian"))

print("=======================================================")

// [from] example of argument label in function swift
func great(person: String, from hometown: String) -> String {
    return "Hello, \(person)!\nGlad you could visit from \(hometown)."
}
print(great(person: "Abdan Zaki Alifian", from: "Banjarnegara"))

print("=======================================================")

// omitting argument label (_) in function swift
func great(_ person: String, from hometown: String) -> String {
    return "Hello, \(person)!\nGlad you could visit from \(hometown)."
}
print(great("Abdan Zaki Alifian", from: "Banjarnegara"))

print("=======================================================")

// default parameter
func great(_ person: String, hometown: String = "Banjarnegara") -> String {
    return "Hello, \(person)!\nGlad you could visit from \(hometown)."
}
print(great("Abdan Zaki Alifian"))

print("=======================================================")

// variadic parameters
func arithmeticMean(numbers: Double...) -> Double {
    var total = 0.0
    numbers.forEach { number in
        total += number
    }
    return total / Double(numbers.count)
}
print("Aritchmetic Mean : \(arithmeticMean(numbers: 1,2,3,4,5,6,7,8,9,10))")

print("=======================================================")

// variadic parameters
func animalNames(names: String...) {
    for (index, name) in names.enumerated() {
        print("\(index + 1). \(name)")
    }
}
animalNames(names: "Cat", "Mouse", "Dog", "Crocodile")

print("=======================================================")

// in out parameters
func swapTwoInts(a: inout Int, b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}
var someInt = 5
var anotherInt = 905
swapTwoInts(a: &someInt, b: &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

print("=======================================================")

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addTwoInts
print("4 + 1 = \(mathFunction(4, 1))")

print("=======================================================")

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    print("5 + 5 = \(mathFunction(a, b))")
}
printMathResult(mathFunction: mathFunction, a: 5, b: 5)

print("=======================================================")

func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(isBackward: Bool) -> (Int) -> Int {
    return isBackward ? stepBackward : stepForward
}

var currentValue = 3
var moveNearerToZero = chooseStepFunction(isBackward: currentValue > 0)
print("Counting to zero:")
while currentValue != 0 {
   print("\(currentValue)... ")
   currentValue = moveNearerToZero(currentValue)
}
print("zero!")

print("=======================================================")

// nested function
func chooseStepFunction2(isBackward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int {
        return input + 1
    }

    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    return isBackward ? stepBackward : stepForward
}

var currentValue2 = -4
var moveNearerToZero2 = chooseStepFunction2(isBackward: currentValue2 > 0)
print("Counting to zero:")
while currentValue2 != 0 {
   print("\(currentValue2)... ")
   currentValue2 = moveNearerToZero2(currentValue2)
}
print("zero!")
