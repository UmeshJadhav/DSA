import UIKit

//Problem Statement: Given an array and a sum k, we need to print the length of the longest subarray that sums to k.
/*
Example 1:
Input Format: N = 3, k = 5, array[] = {2,3,5}
Result: 2
Explanation: The longest subarray with sum 5 is {2, 3}. And its length is 2.

Example 2:
Input Format: N = 5, k = 10, array[] = {2,3,5,1,9}
Result: 3
Explanation: The longest subarray with sum 10 is {2, 3, 5}. And its length is 3.
*/

//Time Complexity: O(N2)
func longestSum(n: Int, k: Int, _ array:[Int]) -> Int {

    var maxLength = 0

    for i in 0..<n {
        var length = 0
        if array[i] < k {
            var j = i + 1
            var sum = array[i]
            while j < n {
                length += 1
                sum += array[j]
                if sum == k {
                    length += 1
                    break
                }
                j += 1
            }
        }
        if maxLength < length {
            maxLength = length
        }
    }
    return maxLength
}


let result = longestSum(n: 5, k: 10, [2,3,5,1,9])
print(result)
