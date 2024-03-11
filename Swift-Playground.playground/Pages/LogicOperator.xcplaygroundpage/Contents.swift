import Foundation

/*
 Logic Operator Swift
 - NOT (!)
 - AND (&&)
 - OR (||)
 */
let isAllowedEntry = false
if !isAllowedEntry {
    print("ACCESS DENIED")
}

print("====================")

let isEnteredDoorCode = true
let isPassedRetinaScan = false
if isEnteredDoorCode && isPassedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

print("====================")

let isHasDoorKey = false
let isKnowsOverridePassword = true
if isHasDoorKey || isKnowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

print("====================")

if isEnteredDoorCode && isPassedRetinaScan || isHasDoorKey || isKnowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}
