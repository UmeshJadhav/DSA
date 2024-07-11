import UIKit

//Problem Statement: Given a non-empty array of integers arr, every element appears twice except for one. Find that single one.
/*
 Example 1:
 Input Format:
  arr[] = {2,2,1}
 Result:
  1
 Explanation:
  In this array, only the element 1 appear once and so it is the answer.

 Example 2:
 Input Format:
  arr[] = {4,1,2,1,2}
 Result:
  4
 */


//Brutforce solution
//Using hashing

//Time Complexity = O(n)
//Space Complexity = O(n)
func singleNumbers(_ nums: [Int]) -> Int {

    var result = 0

    var dict = Dictionary<Int,Int>()

    for num in nums {
        if dict[num] != nil {
            dict[num]! += 1
        } else {
            dict[num] = 0
        }
    }

    for d in dict {
        if d.value == 0 {
            result = d.key
        }
    }

    return result
}
//let result = singleNumbers([2,2,1])
//print(result)

//Optimal Approach
func singleNumber(_ nums: [Int]) -> Int {
    var uniqueNumber = 0
    for num in nums {
        uniqueNumber ^= num
    }
    return uniqueNumber
}
let result = singleNumber([4,1,2,1,2])
print(result)

//Dry Run
/*
 0⊕4=4
 4⊕1=5
 4⊕1=5
 5⊕2=7
 5⊕2=7
 7⊕1=6
 7⊕1=6
 6⊕2=4
 6⊕2=4
 */
