import Foundation

// This is Array in Swift
var someInts = [Int]()
print("someInts with type Int has a \(someInts.count) item.")

print("=======================================================")

someInts.append(3)
print("someInts now contains a value \(someInts) with the data type Int")

print("=======================================================")

someInts = []
print("someInts is now an empty array \(someInts), but still has the data type Int")

print("=======================================================")

var threeDoubles = Array(repeating: 0.1, count: 3)
print("threeDoubles has the data type [Double], and is the same as \(threeDoubles)")

print("=======================================================")

var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
print("anotherThreeDoubles has the data type [Double], and is the same as \(anotherThreeDoubles)")

print("=======================================================")

var sixDoubles = threeDoubles + anotherThreeDoubles
print("sixDoubles will be inferred to be of type [Double], and is equal to \(sixDoubles)")

print("=======================================================")

var shoppingList = ["Eggs", "Milk"]
print("shoppingList is initialized with two items \(shoppingList)")

print("=======================================================")

if shoppingList.isEmpty {
    print("The shopping list is empty")
} else {
    print("The shopping list is not empty")
}

print("=======================================================")

shoppingList.append("Flour")
print("Currently the shopping list contains \(shoppingList), and someone is going to make pancakes")

print("=======================================================")

shoppingList += ["Baking Powder", "Chocolate Spread", "Cheese", "Butter"]
print("Currently the shopping list containts \(shoppingList)")

print("=======================================================")

let firstItem = shoppingList[0]
print("firstItem contains \(firstItem)")

print("=======================================================")

shoppingList[0] = "Six Eggs"
print("Currently the first item of the shopping list is equal to \"\(shoppingList[0])\" not \"Eggs\"")

print("=======================================================")

shoppingList[4...6] = ["Bananas", "Apples"]
print("Currently shopping list contains \(shoppingList)")

print("=======================================================")

shoppingList.insert("Mapple Syrup", at: 4)
print("Currently shopping list contains \(shoppingList). \"Mapple Syrup\" will be the fifth item in the array.")

print("=======================================================")

let mappleSyrup = shoppingList.remove(at: 4)
print("Currently shopping list contains \(shoppingList). \"\(mappleSyrup)\" will be removed in the array.")

print("=======================================================")

let removeLastItem = shoppingList.removeLast()
print("Currently shopping list contains \(shoppingList). \"\(removeLastItem)\" will be removed in the array.")

print("=======================================================")

for item in shoppingList {
    print(item)
}

print("=======================================================")

for (index, item) in shoppingList.enumerated() {
    print("\(index + 1). \(item)")
}
