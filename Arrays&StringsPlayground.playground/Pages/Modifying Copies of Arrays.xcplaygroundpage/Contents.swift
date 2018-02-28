//: # Arrays and Strings
//: ## Modifying copies of Arrays

import UIKit

//: ## If Arrays are Structs in Swift that use value semantics, will be the address of both Arrays different?

var array1 = [1,2,3]
var array2 = array1

array1.withUnsafeBufferPointer { (point) in
    print(point)
}
array2.withUnsafeBufferPointer { (point) in
    print(point)
}

array2.append(4)

array1.withUnsafeBufferPointer { (point) in
    print(point)
}
array2.withUnsafeBufferPointer { (point) in
    print(point)
}

//: [Next](@next)
