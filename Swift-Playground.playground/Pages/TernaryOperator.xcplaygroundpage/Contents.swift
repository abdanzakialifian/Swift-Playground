import Foundation

// This is Tenary Conditional Operator
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
print("rowHeight equals to \(rowHeight)")
