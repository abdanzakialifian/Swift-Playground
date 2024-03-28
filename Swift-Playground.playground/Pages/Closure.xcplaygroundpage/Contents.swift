import Foundation

// This is Closure in Swift
let names = ["Zaki", "Abdan", "Alifian"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var reversedNames = names.sorted(by: backward)
print(reversedNames)

print("=======================================================")

// Closure expression syntax
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 < s2 })
print(reversedNames)

print("=======================================================")

// Inferring Type
reversedNames = names.sorted(by: { s1, s2 in return s1 < s2 })
print(reversedNames)

print("=======================================================")

// Implisit return from Single-Expression Closures
reversedNames = names.sorted(by: { s1, s2 in s1 < s2 })
print(reversedNames)

print("=======================================================")

// Shorthand Argument Names
reversedNames = names.sorted(by: { $0 < $1 })
print(reversedNames)

print("=======================================================")

// Operator Method
reversedNames = names.sorted(by: >)
print(reversedNames)

print("=======================================================")

// Trailing Closure
reversedNames = names.sorted { $0 < $1 }
print(reversedNames)

print("=======================================================")

// Trailing Closure
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]
let strings = numbers.map { number in
    var number = number
    var ouput = ""
    repeat {
        ouput = (digitNames[number % 10] ?? "Zero") + ouput
        number /= 10
    } while number > 0
    return ouput
}
print("Strings is of the string array data type and has the value \(strings)")

print("=======================================================")

// Capturing Values Closure
func makeIncrementer(amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(amount: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

let incrementBySeven = makeIncrementer(amount: 7)
print(incrementBySeven())

print(incrementByTen())
print(incrementBySeven())

let alsoIncrementByTen = incrementByTen
print(alsoIncrementByTen())
print(incrementByTen())

print("=======================================================")

// Escaping Closure
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}
func someFunctionWithNoneEscapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        someFunctionWithNoneEscapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()

instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)

print("=======================================================")

// Auto Closure
var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
print(customersInLine)

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
print(customersInLine)

print("Now serving \(customerProvider())!")

print(customersInLine.count)
print(customersInLine)

print("=======================================================")

// Auto Closure
func serve(customer customerProvider: @autoclosure () -> String) {
    print("Now serving \(customerProvider())!")
}
serve(customer: customersInLine.remove(at: 0))
