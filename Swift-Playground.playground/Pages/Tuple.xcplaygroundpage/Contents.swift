import Foundation

// This is declaration of Tuple
let http404Error = (statusCode: 404, error: "Error", statusMessage: "Not Found.")

print("Status Code for http404Error is \(http404Error.statusCode)")
print("Error for http404Error is \(http404Error.error)")
print("Status Message for http404Error is \(http404Error.statusMessage)")
