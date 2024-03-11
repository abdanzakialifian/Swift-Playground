import Foundation

// This is Closed Range Operator
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

print("============================")

// This is Half-Open Range Operator
let animalNames = ["Crocodile", "Elephant", "Lion", "Cat", "Mouse"]
for index in 0..<animalNames.count {
    print("\(index + 1). \(animalNames[index])")
}


print("============================")

// This is One-Side Range Operator
for name in animalNames[2...] {
    print(name)
}

print("============================")

// This is One-Side Range Operator
for name in animalNames[...2] {
    print(name)
}

print("============================")

// This is One-Side Range and Half-Open Range Operator
for name in animalNames[..<2] {
    print(name)
}


print("============================")

// Check available number in range
let range = ...5
print("range has a value 7 \(range.contains(7))")
print("range has a value 1 \(range.contains(1))")
print("range has a value 0 \(range.contains(0))")
print("range has a value -1 \(range.contains(-1))")
