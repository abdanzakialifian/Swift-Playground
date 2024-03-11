import Foundation

// This is Set in Swift
var letters = Set<Character>()
print("letters data type Set has \(letters.count) item.")

print("=======================================================")

letters.insert("a")
print("Currently letters contains \(letters) with the data type Character")

print("=======================================================")

letters = []
print("Currently letters is empty \(letters), but the data type is still Set<Character>")

print("=======================================================")

var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip Hop", "Pop", "Reggae"]
print("favoriteGenres initialized with \(favoriteGenres)")

print("=======================================================")

print("I have \(favoriteGenres.count) favorite music genres")

print("=======================================================")

if favoriteGenres.isEmpty {
    print("As far as music goes, I'm not picky.")
} else {
    print("I have particular music preferences.")
}

print("=======================================================")

favoriteGenres.insert("Jazz")
print("Currently favorite genres contains \(favoriteGenres)")

print("=======================================================")

if let removedGenre = favoriteGenres.remove("Jazz") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

if let removedGenre = favoriteGenres.remove("Dangdut") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}

print("=======================================================")

if favoriteGenres.contains("Funk") {
    print("I get up on the good foot.")
} else {
    print("It's too funky in here.")
}

print("=======================================================")

for item in favoriteGenres {
    print(item)
}

print("=======================================================")

for (index, item) in favoriteGenres.enumerated() {
    print("\(index + 1). \(item)")
}

print("=======================================================")

for item in favoriteGenres.sorted() {
    print(item)
}

print("=======================================================")

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

print("oddDigits.union(evenDigits) : \(oddDigits.union(evenDigits).sorted())")

print("=======================================================")

print("oddDigits.intersection(evenDigits) : \(oddDigits.intersection(evenDigits).sorted())")

print("=======================================================")

print("oddDigits.subtracting(singleDigitPrimeNumbers) : \(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())")

print("=======================================================")

print("oddDigits.symmetricDifference(singleDigitPrimeNumbers) : \(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())")

print("=======================================================")

let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "goat", "dog", "cat"]
let cityAnimals: Set = ["bird", "mouse"]

print("houseAnimals.isSubset(of: farmAnimals) : \(houseAnimals.isSubset(of: farmAnimals))")

print("=======================================================")

print("farmAnimals.isSuperset(of: houseAnimals) : \(farmAnimals.isSuperset(of: houseAnimals))")

print("=======================================================")

print("farmAnimals.isDisjoint(with: cityAnimals) : \(farmAnimals.isDisjoint(with: cityAnimals))")
