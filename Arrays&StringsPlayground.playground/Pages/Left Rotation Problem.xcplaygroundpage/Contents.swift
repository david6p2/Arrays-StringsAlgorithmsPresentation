//: [Previous](@previous)

//: # Arrays and Strings
//: ## Left Rotation

/*: Some Text
A left rotation operation on an array of size  shifts each of the array's elements  unit to the left. For example, if **2** left rotations are performed on array **[1,2,3,4,5]**, then the array would become **[3,4,5,1,2]**.

Given an array of **n** integers and a number, **d**, perform **d** left rotations on the array. Then print the updated array as a single line of space-separated integers.

 ### Input Format

You will get the respective values of **n** (the number of integers), **d** (the number of left rotations you must perform)and the Array of **n** integers elements of the array's initial state.

 ### Constraints
 
 * 1 <= **n** <= 10^5
 * 1 <= **d** <= **n**
 * 1 <= **a**i <= 10^6

 ### Output Format

Print the final state of the array after performing  left rotations.

 ### Sample Input

**n**=5 **d**=4
**a**= [1, 2, 3, 4, 5]
 
 ### Sample Output

[5, 1, 2, 3, 4]
 
 ### Explanation

When we perform **d**=4 left rotations, the array undergoes the following sequence of changes:
 
 [1, 2, 3, 4, 5] -> [2, 3, 4, 5, 1] -> [3, 4, 5, 1, 2] -> [4, 5, 1, 2, 3] -> [5, 1, 2, 3, 4]

Thus, we print the array's final state, which is **[5, 1, 2, 3, 4]**.
 */

import Foundation

func rotateArray(array:[Int], ofSize size:Int, thisNumberOfTimes times:Int) -> [Int]? {
    return nil
}

//: ### Tests Code Goes here
import XCTest

class MyTests : XCTestCase {
    
    func testRotateArrayExist() {
        let finalArray = rotateArray(array: [1,2,3,4,5], ofSize: 5, thisNumberOfTimes: 0)
        XCTAssertNil(finalArray, "The returned array is not nil")
    }
    
}

class PlaygroundTestObserver : NSObject, XCTestObservation {
    func testCase(_ testCase: XCTestCase, didFailWithDescription description: String, inFile filePath: String?, atLine lineNumber: Int) {
        print("Test failed on line \(lineNumber): \(testCase.name ), \(description)")
    }
}

let observer = PlaygroundTestObserver()
let center = XCTestObservationCenter.shared
center.addTestObserver(observer)

struct TestRunner {
    
    func runTests(testClass:AnyClass) {
        print("Running test suite \(testClass)")
        
        let tests = testClass as! XCTestCase.Type
        let testSuite = tests.defaultTestSuite
        testSuite.run()
        let run = testSuite.testRun as! XCTestSuiteRun
        
        print("Ran \(run.executionCount) tests in \(run.testDuration)s with \(run.totalFailureCount) failures")
    }
}

TestRunner().runTests(testClass:MyTests.self)

//: [Next](@next)
