//: [Previous](@previous)

//: # Arrays and Strings
//: ## Bridging

import Foundation

//: ## What happened with array of Strings, will be the address of both Arrays remain the same?

var array1 = ["Hello", "playground"]
var array2 = array1

print(array1)
print(array2)

withUnsafePointer(to: &array1) {
    print(" array1 value \(array1) has address: \($0)")
}

withUnsafePointer(to: &array2) {
    print(" array2 value \(array2) has address: \($0)")
}

array2.append("Globant")

print(array1)
print(array2)

withUnsafePointer(to: &array1) {
    print(" array1 value \(array1) has address: \($0)")
}
withUnsafePointer(to: &array2) {
    print(" array2 value \(array2) has address: \($0)")
}

//: [Next](@next)
