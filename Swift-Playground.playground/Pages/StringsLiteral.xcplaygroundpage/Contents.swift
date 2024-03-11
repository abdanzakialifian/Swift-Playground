import Foundation

// This is Multi Strings Literal
let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin, please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on till you come to the end; then stop."
"""
print(quotation)

print("===================================================")

let softWrappeQuotation = """
The White Rabbit put on his spectacles. "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""
print(softWrappeQuotation)

print("===================================================")

let castCharacters: [Character] = ["C", "a", "t", "!", "?", "?", "?", "?"]
let catString = String(castCharacters)
print(catString)

print("===================================================")

/*
 Escaped Special Character
 \0 = null character
 \\ = backslash
 \t = horizontal tab
 \n = line feed
 \r = carriage return
 \” = double quote
 \’ = single quote
 */
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
print(wiseWords)
let dollarSign = "\u{24}"
print("\(dollarSign), Unicode scalar U+0024")
let blackHeart = "\u{2665}"
print("\(blackHeart), Unicode scalar U+2665")
let sparklingHeart = "\u{1F496}"
print("\(sparklingHeart), Unicode scalar U+1F496")
