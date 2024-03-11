import Foundation

// This is For-In in Swift
let names = ["Abdan", "Zaki", "Alifian"]
for name in names {
    print("Hello \(name)!")
}

print("=======================================================")

let numberOfLegs = ["cat": 4, "spider": 8, "chicken": 2]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName) has \(legCount) legs.")
}

print("=======================================================")

for index in 1...5 {
    print("\(index) times 5 equals \(index * 5)")
}

print("=======================================================")

let minutes = 20
for tickMark in 0..<minutes {
   print(tickMark)
}

print("=======================================================")

let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print(tickMark)
}

print("=======================================================")

let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval) {
    print(tickMark)
}
