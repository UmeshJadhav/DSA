import UIKit

//1. Two Sum
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.
/*
 Example 1:

 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
 Example 2:

 Input: nums = [3,2,4], target = 6
 Output: [1,2]
 Example 3:

 Input: nums = [3,3], target = 6
 Output: [0,1]
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

    var numToIndex = Dictionary<Int,Int>()

    for i in 0..<nums.count {
        let completement = target - nums[i]

        if let completementIndex = numToIndex[completement] {
            return [i, numToIndex[completement]!]
        }
        numToIndex[nums[i]] = i
    }
    return []
}
//let result = twoSum([2,7,11,15], 9)
//print(result)


//2. Sort Colors
/*
 Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.

 We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively.

 You must solve this problem without using the library's sort function.

 Example 1:

 Input: nums = [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 Example 2:

 Input: nums = [2,0,1]
 Output: [0,1,2]
 */
func sortColors(_ nums: inout [Int]) {
    var low = 0
    var mid = low
    var high = nums.count - 1

    while mid < high {

        if nums[mid] == 0 {
            nums.swapAt(mid, low)
            low += 1
            mid += 1
        } else if nums[low] == 1 {
            mid += 1
        } else {
            nums.swapAt(mid, high)
            high -= 1
        }
    }
}

//var inputArray = [2,0,2,1,1,0]
//sortColors(&inputArray)
//print(inputArray)

//3. Majority element
/*
 Problem Statement: Given an array of N integers, write a program to return an element that occurs more than N/2 times in the given array. You may consider that such an element always exists in the array.
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
//Brute force
//func majorityElement(_ nums: [Int]) -> Int {
//    var dict = Dictionary<Int,Int>()
//
//    for i in 0..<nums.count {
//        if dict[nums[i]] != nil {
//            dict[nums[i]]! += 1
//        }else {
//            dict[nums[i]] = 1
//        }
//    }
//    for d in dict {
//        if d.value > nums.count / 2 {
//            return d.key
//        }
//    }
//    return -1
//}

//let result = majorityElement([3,2,3])
//print(result)

func majorityElement(_ nums: [Int]) -> Int {

    var majority = nums[0]
    var counter = 0

    for i in 0..<nums.count {
        if nums[i] == majority {
            counter += 1
        } else {
            counter -= 1
        }

        if counter == 0 {
            majority = nums[i]
            counter = 1
        }
    }
    return majority
}
//let result = majorityElement([2,2,1,1,1,2,2])
//print(result)

//4. Stock Buy Sell
/*
 Problem Statement: You are given an array of prices where prices[i] is the price of a given stock on an ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock. Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

 Example 1:
 Input:
  prices = [7,1,5,3,6,4]
 Output:
  5
 Explanation:
  Buy on day 2 (price = 1) and
 sell on day 5 (price = 6), profit = 6-1 = 5.

 Example 2:
 Input:
  prices = [7,6,4,3,1]
 Output:
  0


 */
func maxProfit(_ prices: [Int]) -> Int {
    var maxProfitSoFar = 0
    var currentMin = prices[0]

    for i in 0..<prices.count {

        currentMin = min(currentMin, prices[i])
        maxProfitSoFar = max(maxProfitSoFar, prices[i] - currentMin)
    }

    return maxProfitSoFar
}

//let result = maxProfit([7,1,5,3,6,4])
//print(result)


//5. Rearrange Array Elements by Sign
/*
 You are given a 0-indexed integer array nums of even length consisting of an equal number of positive and negative integers.

 You should return the array of nums such that the the array follows the given conditions:

 Every consecutive pair of integers have opposite signs.
 For all integers with the same sign, the order in which they were present in nums is preserved.
 The rearranged array begins with a positive integer.
 Return the modified array after rearranging the elements to satisfy the aforementioned conditions


 Example 1:
 Input: nums = [3,1,-2,-5,2,-4]
 Output: [3,-2,1,-5,2,-4]
 */
func rearrangeArray(_ nums: [Int]) -> [Int] {
    var posIndex = 0
    var negIndex = 1

    var resultArray = Array.init(repeating: 0, count: nums.count)


    for i in 0..<nums.count {
        if nums[i] < 0 {
            resultArray[negIndex] = nums[i]
            negIndex += 2
        }else {
            resultArray[posIndex] = nums[i]
            posIndex += 2
        }
    }
    return resultArray
}
let result = rearrangeArray([3,1,-2,-5,2,-4])
print(result)
