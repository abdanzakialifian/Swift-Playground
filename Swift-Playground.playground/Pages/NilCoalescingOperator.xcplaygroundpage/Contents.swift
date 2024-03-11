import Foundation

// This is Nil-Coalescing Operator
let defaultColorName = "RED"
var userDefinedColorName: String? = nil
var colorNameToUse = userDefinedColorName ?? defaultColorName
print("Value from colorNameToUse is a \(colorNameToUse)")

print("===========================")

userDefinedColorName = "GREEN"
colorNameToUse = userDefinedColorName ?? defaultColorName
print("Value from colorNameToUse is a \(colorNameToUse)")
