import Foundation

// Empty String
var emptyString = ""
if emptyString.isEmpty {
    print("Nothing to see here")
}

print("=============================")

// Access Character String
var job = "iOS Developer"
print(job[job.startIndex])
print(job[job.index(before: job.endIndex)])
print(job[job.index(after: job.startIndex)])
print(job[job.index(job.startIndex, offsetBy: 4)])

print("=============================")

// Add Character or String to specific position
job.insert("~", at: job.endIndex)
print(job)
job.insert(contentsOf: " -", at: job.index(job.startIndex, offsetBy: 3))
print(job)

print("=============================")

// Remove Character or String to specific position
job.remove(at: job.index(job.startIndex, offsetBy: 4))
print(job)
job.removeSubrange(job.index(job.startIndex, offsetBy: 3)..<job.endIndex)
print(job)
