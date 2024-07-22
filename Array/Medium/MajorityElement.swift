import UIKit

//Problem Statement: Given an array of N integers, write a program to return an element that occurs more than N/2 times in the given array. You may consider that such an element always exists in the array.
/*
Example 1:
Input Format
: N = 3, nums[] = {3,2,3}
Result
: 3
Explanation
: When we just count the occurrences of each number and compare with half of the size of the array, you will get 3 for the above solution.

Example 2:
Input Format:
  N = 7, nums[] = {2,2,1,1,1,2,2}

Result
: 2
*/


//Brut force Approch
//Hash map
//TimeComplexity: O(n)
//Space complexity: O(n)

func majorityElements(_ nums: [Int]) -> Int {

    var elementCountDict = Dictionary<Int, Int>()
    var majorityElement = 0
    
    //Storing frquency of each element
    for i in 0..<nums.count {
        if elementCountDict[nums[i]] != nil {
            elementCountDict[nums[i]]! += 1
        } else {
            elementCountDict[nums[i]] = 1
        }
    }

    //Finding maximum element from the dict

    var maxValue = Int.min
    for dict in elementCountDict {
        if dict.value > maxValue && dict.value > nums.count/2 {
            maxValue = dict.value
            majorityElement = dict.key
        }
    }

    return majorityElement
}

//let result = majorityElements([3,2,3])
//print(result)

//Optimal Approach
//Boyer-Moore Voting Algorithm.
//Step 1
//It has two variables one is candidate and other is count of candidate. this counter will reset, increase or decrese based on elements in the arrar
//Reset counter to zero when count == 0, and if this condition meets then change the candidate. candidate = element
//Step 2
//If counter == element then increase the counter
//step 3
// if conunter != element then decrese the count

//TimeComplexity: O(n)
//Space complexity: O(1)
func majorityElement(_ nums: [Int]) -> Int {
    var majority = nums[0]
    var count = 1

    for i in 0..<nums.count {
        if nums[i] == majority {
            count += 1
        } else {
            count -= 1
        }

        if count == 0 {
            majority = nums[i]
            count = 1
        }
    }
    return majority
}
let result = majorityElement([2,2,1,1,1,2,2])
print(result)
