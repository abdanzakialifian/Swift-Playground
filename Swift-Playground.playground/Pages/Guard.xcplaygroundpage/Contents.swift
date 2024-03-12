import Foundation

// This is Guard in Swift
func great(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello, \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

great(person: ["name" : "Abdan Zaki Alifian"])

print("=======================================================")

great(person: ["name" : "Jane", "location" : "Cupertino"])
