import Cocoa

// Mutable variable
var greeting = ""
greeting = "Hello, Swift!"
print(greeting)


// Immutable variable / Constant variable
let greeting2 = "Hello, Swift 2!"
print(greeting2)

// Multiple input print
print(1,2,3,4,5)

// Custom Separator
print(1,2,3,4,5, separator: "---")

// Custom Terminator
print(1,2,3,4,5, terminator: "\n\n\n\n")

// String Interpolation
print("The current value of greeting and greeting2 is \(greeting) and \(greeting2)")
