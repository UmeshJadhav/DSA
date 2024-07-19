import UIKit

//Problem Statement: Given an array of integers arr[] and an integer target.
/*
 Example 1:
 Input Format: N = 5, arr[] = {2,6,5,8,11}, target = 14
 Result: [1, 3]
 Explanation: arr[1] + arr[3] = 14. So, the answer is “YES” for the first variant and [1, 3] for 2nd variant.
 */

//There are three Approaches to solve this problems
//1. Brut force approch-> Loop inside loop to check target with each other : O(n^2)
//2. Two pointer -> O(n)/ SpaceComplexity O(1) -> if array not sorted, need to sort first, so based on sorting algorithm time complexity driven
//3. Hashmap -> O(n) / SpaceComplexity  O(n) - Most effiecint way -> even in array was not sorted

//HashMap Approach
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // We will store all number in dictionationary. lik - Element: Index
    var numToIndex = [Int: Int]()
    for i in 0..<nums.count {
        //Subtracting current number from target will give us other number, then we will find is that number exist in numToIndex dictionary. if it is found then we found the other number. we will pick that numer index as complementIndex.
        let complement = target - nums[i]
        if let complementIndex = numToIndex[complement] {
            return [complementIndex, i]
        }
        //Storing in array element with index in dictionary
        numToIndex[nums[i]] = i
    }

    return []
}


//Two Pointer Approach
//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//
//    var left = 0
//    var right = nums.count - 1
//
//    var array = nums.sorted()
//    var resultArray = [Int]()
//
//    while left < right {
//        if array[left] + array[right] == target {
//            //Here we are copying elements in resultArray, as our indxes are changed due to sorting
//            resultArray.append(array[left])
//            resultArray.append(array[right])
//            break
//        } else if array[left] + array[right] < target {
//            left += 1
//        } else {
//            right -= 1
//        }
//    }
//
//    //We earlier sort the array so our index positions has been changed, so we will find resultArray elements positions in original nums array and return the result
//    for i in 0..<nums.count {
//        if resultArray[0] == nums[i] {
//            resultArray[0] = i
//        }else if resultArray[1] == nums[i] {
//            resultArray[1] = i
//        }
//
//    }
//
//    return resultArray
//}
let result = twoSum([2,6,5,8,11],14)
print(result)
