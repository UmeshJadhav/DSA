import UIKit

// SubArraySum

// Count Subarray sum Equals K
/*
Problem Statement: Given an array of integers and an integer k, return the total number of subarrays whose sum equals k.

A subarray is a contiguous non-empty sequence of elements within an array.

 Example 1:
 Input Format:
  N = 4, array[] = {3, 1, 2, 4}, k = 6
 Result:
  2
 Explanation:
  The subarrays that sum up to 6 are [3, 1, 2] and [2, 4].

 Example 2:
 Input Format:
  N = 3, array[] = {1,2,3}, k = 3
 Result:
  2

*/

// Brute Force Approach
// Time complexity: O(n^2)
// Space Complexity: O(1)
func subarraysSum(_ nums: [Int], _ k: Int) -> Int {
    var sumCounter = 0
    for i in 0..<nums.count {
        var j = i
        var sum = 0

        while j < nums.count {
            sum += nums[j]
            if sum == k {
                sumCounter += 1
            }
            j += 1
        }
    }
    return sumCounter
}
//let result = subarraySum([1,-1,0], 0)
//print(result)


// Optimal Approch
// Prefix Sum With Hashmap


func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    var prefixSum = 0
    var prefixSumMap = [0: 1]

    for num in nums {
        prefixSum += num

        if let prefixCount = prefixSumMap[prefixSum - k] {
            count += prefixCount
        }

        prefixSumMap[prefixSum, default: 0] += 1
    }

    return count
}
let result = subarraySum([1, 1, 11], 2)
print(result)
