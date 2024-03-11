import Foundation

// This is Dictionary in Swift
var namesOfIntegers = Dictionary<Int, String>()
print("namesOfIntegers is a empty dictionary \(namesOfIntegers.count)")

print("=======================================================")

namesOfIntegers[29] = "Twenty Nine"
print("Currently namesOfIntegers contains \(namesOfIntegers)")

print("=======================================================")

namesOfIntegers = [:]
print("Currently nameOfIntegers an empty dictionary \(namesOfIntegers) with data type [Int:String]")

print("=======================================================")

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
print("airports is not empty dictionary \(airports)")

print("=======================================================")

print("Dictionary airports contains \(airports.count) items.")

print("=======================================================")

if airports.isEmpty {
    print("Empty dictionary airports")
} else {
    print("Dictionary airports has a value \(airports)")
}

print("=======================================================")

airports["LHR"] = "London"
print("Currently dictionary airports contains \(airports)")

print("=======================================================")

airports["LHR"] = "London Heathrow"
if let londonAirports = airports["LHR"] {
    print("Currently dictionary airports contains \(londonAirports)")
}

print("=======================================================")

if let oldValue = airports.updateValue("Dublin Airports", forKey: "DUB") {
    print("Old value from DUB is \(oldValue)")
}

if let newValue = airports["DUB"] {
    print("New value from DUB is \(newValue)")
} else {
    print("This airports is not in the dictionary")
}

print("=======================================================")

if let removedValue = airports.removeValue(forKey: "DUB") {
    print("Removed airports with the name \(removedValue)")
} else {
    print("Key not found.")
}

print("=======================================================")

for (airportCode, airportName) in airports {
    print("\(airportCode) : \(airportName)")
}

print("=======================================================")

for airportCode in airports.keys {
    print("Airport Code : \(airportCode)")
}

print("=======================================================")

for airportName in airports.values {
    print("Airport Name : \(airportName)")
}

print("=======================================================")

let airportCodes = airports.keys
print("Initilized airport code to data type array \(airportCodes)")

print("=======================================================")

let airportNames = airports.values
print("Initilized airport name to data type array \(airportNames)")
