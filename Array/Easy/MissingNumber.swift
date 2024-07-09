import UIKit

// Find the missing number in an array
// Problem Statement: Given an integer N and an array of size N-1 containing N-1 numbers between 1 to N. Find the number(between 1 to N), that is not present in the given array.

/*
 Example 1:
 Input Format:
  N = 5, array[] = {1,2,4,5}
 Result:
  3
 Explanation:
 In the given array, number 3 is missing. So, 3 is the answer.

 Example 2:
 Input Format:
  N = 3, array[] = {1,3}
 Result:
  2
 */


func missingNumber(_ nums: [Int]) -> Int {
    var n = nums.count + 1
    var actualSum = 0
    var expectedSum = n * (n + 1)/2 //calculating sumation using formula = n * (n + 1)/2
    for i in 0..<nums.count {
        expectedSum -= nums[i]
    }
    return expectedSum
}
let result = missingNumber([1,3] )
print(result)
