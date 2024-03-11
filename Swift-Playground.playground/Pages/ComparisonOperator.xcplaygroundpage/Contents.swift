import Foundation

/*
 Comparison Operator Swift
 - equal to (a == b)
 - not equal to (a != b)
 - greater than (a > b)
 - less than (a < b)
 - greater than or equal to (a >= b)
 - less than or equal to (a <= b)
 */
let isEqualTo = 1 == 1
print("1 == 1 \(isEqualTo) because 1 equals to 1")

let isNotEqualTo = 2 != 1
print("2 != 1 \(isNotEqualTo) becasue 2 not equals to 1")

let isGratherThan = 2 > 1
print("2 > 1 \(isGratherThan) because 2 grather than 1")

let isLessThan = 1 < 2
print("1 < 2 \(isLessThan) because 1 less than 2")

let isGratherThanOrEqualTo = 1 >= 1
print("1 >= 1 \(isGratherThanOrEqualTo) becase 1 grather than or equals to 1")

let isLessThanOrEqualTo = 1 <= 2
print("1 <= 2 \(isGratherThanOrEqualTo) becase 1 less than or equals to 2")

let name = "Swift"
if name == "Swift!" {
    print("Hello, \(name)")
} else {
    print("I'm sorry \(name), but i don't recognize you")
}

let animalVsFruit = (1, "Zebra") < (2, "apple")
print("Result from animalVsFruit is a \(animalVsFruit) because 1 less than 2. So the similarity of the second tupple item, namely \"z\" is not the same as \"a\" is ignored.")

let fruitVsAnimal = (3, "apple") < (3, "bird")
print("Result from fruitVsAnimal is a \(fruitVsAnimal) because \"a\" is less than \"b\". For the equation 3 equal 3 is ignored because the value is the same.")

let animalVsAnimal = (4, "dog") == (4, "dog")
print("Result from animalVsAnimal is a \(animalVsAnimal) becasue both equations have the same value.")
