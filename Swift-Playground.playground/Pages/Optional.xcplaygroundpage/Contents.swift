import Foundation

// This is variable optional/nil
var convertedNumber: Int? = 123
if convertedNumber != nil {
    print("convertedNumber not nil \(convertedNumber)", terminator: "\n\n")
}

// Optional Binding
let possibleNumber = "123"
if let actualNumber = Int(possibleNumber) {
    print("possibleNumber String has value string \(possibleNumber) and can be convert to Integer \(actualNumber)")
} else {
    print("possibleNumber String has value string \(possibleNumber) and can't be convert to Integer")
}
