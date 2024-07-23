import UIKit

//Kadane's Algorithm : Maximum Subarray Sum in an Array
//Problem Statement: Given an integer array arr, find the contiguous subarray (containing at least one number) which
//has the largest sum and returns its sum and prints the subarray.

/*
 Example 1:

 Input: nums = [-2,1,-3,4,-1,2,1,-5,4]
 Output: 6
 Explanation: The subarray [4,-1,2,1] has the largest sum 6.
 Example 2:

 Input: nums = [1]
 Output: 1
 Explanation: The subarray [1] has the largest sum 1.
 Example 3:

 Input: nums = [5,4,-1,7,8]
 Output: 23
 Explanation: The subarray [5,4,-1,7,8] has the largest sum 23.
 */

//Burte Force approach - Two Pointer
//Time complexity: O(n^2)
//Space Complexity : O(1)
func maxSubArrays(_ nums: [Int]) -> Int {

    if nums.count == 1 {
        return nums.first ?? 0
    }
    var maxSum = Int.min
    for i in 0..<nums.count {
        var sum = nums[i]
        var j = i + 1
        while j < nums.count {

            sum += nums[j]
            maxSum = max(sum, maxSum)

            if maxSum < nums[i] {
                maxSum = nums[i]
            }

            if maxSum < nums[j] {
                maxSum = nums[j]
            }

            j += 1


        }
    }
    return maxSum
}

//let result = maxSubArrays([-1,1])
//print(result)

//Optimal solution
/*
Approach
Initialize two variables: max_so_far to store the maximum sum found so far and current_max to store the current subarray sum.
Iterate through the array.
For each element in the array, update the current_max to be the maximum of the current element itself or the current element plus the current_max (which represents extending the current subarray).
Update max_so_far to be the maximum of max_so_far and current_max.
By the end of the iteration, max_so_far will hold the maximum sum of a contiguous subarray.
 */

//Time complexity: O(n)
//Space Complexity : O(1)
func maxSubArray(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    
    var currentMax = nums[0]
    var maxSoFar = nums[0]

    if nums.count == 1 {
        return maxSoFar
    }

    for i in 1..<nums.count {
        //get the maximum number from currentMax and next element in the array
        currentMax = max(nums[i], currentMax + nums[i])
        //Update the maxSoFar by comparing currentMax and maxSoFar
        maxSoFar = max(currentMax, maxSoFar)
    }

    return maxSoFar
}
let result = maxSubArray([-1,1])
print(result)
