import UIKit

//Count Maximum Consecutive One's in the array
//Problem Statement: Given an array that contains only 1 and 0 return the count of maximum consecutive ones in the array.

/*
 Example 1:

 Input: prices = {1, 1, 0, 1, 1, 1}

 Output: 3

 Explanation: There are two consecutive 1’s and three consecutive 1’s in the array out of which maximum is 3.

 Input: prices = {1, 0, 1, 1, 0, 1}

 Output: 2
 */


func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxOnes = 0
    for i in 0..<nums.count {
        if nums[i] == 1 {
            var counter = 1
            var j = i + 1
            while j < nums.count && nums[j] == 1 {
                counter += 1
                j += 1
            }

            if maxOnes < counter {
                maxOnes = counter
            }
        }
    }
    return maxOnes
}


let result = findMaxConsecutiveOnes([1, 0, 1, 1, 0, 1])
print(result)
