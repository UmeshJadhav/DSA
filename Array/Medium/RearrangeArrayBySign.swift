import UIKit


//Variety-1

//Problem Statement:
//There’s an array ‘A’ of size ‘N’ with an equal number of positive and negative elements. Without altering the relative order of positive and negative elements, you must return an array of alternately positive and negative values.
/*

 Example 1:

 Input:
 arr[] = {1,2,-4,-5}, N = 4
 Output:
 1 -4 2 -5

 Example 2:
 Input: nums = [3,1,-2,-5,2,-4]
 Output: [3,-2,1,-5,2,-4]
 Explanation:
 The positive integers in nums are [3,1,2]. The negative integers are [-2,-5,-4].
 The only possible way to rearrange them such that they satisfy all conditions is [3,-2,1,-5,2,-4].
 Other ways such as [1,-2,2,-5,3,-4], [3,1,2,-2,-5,-4], [-2,3,-5,1,-4,2] are incorrect because they do not satisfy one or more conditions.

 Example 3:
 Input: nums = [-1,1]
 Output: [1,-1]
 */

//BruteForce Approch
//Time Complexity:  O(N+N/2
//Space Complexity:  O(N/2 + N/2) = O(N)

func rearrangeArray(_ nums: [Int]) -> [Int] {
    var result:[Int] = []
    var positive:[Int] = []
    var negative:[Int] = []

    for num in nums {
        if num < 0 {
            negative.append(num)
        }else {
            positive.append(num)
        }
    }

    for i in 0..<nums.count/2 {
        result.append(positive[i])
        result.append(negative[i])
    }

    return result
}

// let result = rearrangeArray([3,-2,1,-5,2,-4])
// print(result)


//Optimal Approach
//Time Complexity: O(n)
//Space Complexity: O(n)
func rearrangeArrays(_ nums: [Int]) -> [Int] {

    var result = Array.init(repeating: 0, count: nums.count)

    var posIndex = 0
    var negIndex = 1

    for i in 0..<nums.count {

        if nums[i] < 0 {
            result[negIndex] = nums[i]
            negIndex += 2
        } else {
            result[posIndex] = nums[i]
            posIndex += 2
        }
    }

    return result
}

let result = rearrangeArrays([3,-2,1,-5,2,-4])
print(result)
