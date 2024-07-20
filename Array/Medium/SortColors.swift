import UIKit

//Problem Statement: Given an array consisting of only 0s, 1s, and 2s. Write a program to in-place sort the array without using inbuilt sort functions. ( Expected: Single pass-O(N) and constant space)
/*
 Input:
  nums = [2,0,2,1,1,0]
 Output
 : [0,0,1,1,2,2]

 Input:
  nums = [2,0,1]
 Output:
  [0,1,2]
 */
//https://leetcode.com/problems/sort-colors/
//Dutch National Flag algorithm
//Three pointers
/*
 Approach
 The idea is to maintain three pointers:

 low - This will keep track of the boundary for 0s.
 mid - This will traverse through the array.
 high - This will keep track of the boundary for 2s.
 The algorithm works as follows:

 If the element at mid is 0, swap it with the element at low and increment both low and mid.
 If the element at mid is 1, just increment mid.
 If the element at mid is 2, swap it with the element at high and decrement high.
 */

func sortColors(_ numss: [Int]) {
    var nums = numss

    var low = 0
    var mid = 0
    var high = nums.count - 1

    while mid <= high {
        switch nums[mid] {
        case 0:
            nums.swapAt(low, mid)
            low += 1
            mid += 1
        case 1:
            mid += 1
        case 2:
            nums.swapAt(mid, high)
            high -= 1
        default:
            break
        }
    }
    print(nums)
}
var inputArray = [2,0,2,1,1,0]
sortColors(inputArray)
