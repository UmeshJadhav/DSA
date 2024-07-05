import UIKit

//Problem Statement: You are given an array of integers, your task is to move all the zeros in the array to the end of the array and move non-negative integers to the front by maintaining their order.
/*
 Example 1:
 Input:
  1 ,0 ,2 ,3 ,0 ,4 ,0 ,1
 Output:
  1 ,2 ,3 ,4 ,1 ,0 ,0 ,0

 Example 2:
 Input:
  1,2,0,1,0,4,0
 Output:
  1,2,1,4,0,0,0
 */

//Time Complexity: O(n)
//Space Complexity: O(1)

func moveZeroes(_ nums: inout [Int]) {
    var nonZeroIndex = 0
    // Move all non-zero elements to the beginning of the array
    for i in 0..<nums.count {
        if nums[i] != 0 {
            nums[nonZeroIndex] = nums[i]
            nonZeroIndex += 1
        }
    }
    // Fill the remaining positions with zeroes
    for i in nonZeroIndex..<nums.count {
        nums[i] = 0
    }
}

var inputArray = [0,1,0,3,12]
moveZeroes(&inputArray)
print(inputArray)
