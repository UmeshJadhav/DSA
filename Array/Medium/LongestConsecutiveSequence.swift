import UIKit

// Longest Consecutive Sequence in an Array
// Problem Statement: You are given an array of ‘N’ integers. You need to find the length of the longest sequence which contains the consecutive elements.

/*
 Example 1:
 Input:
  [100, 200, 1, 3, 2, 4]

 Output:
  4
 Explanation:
  The longest consecutive subsequence is 1, 2, 3, and 4.

 Input:
  [3, 8, 5, 7, 6]

 Output:
  4

 Explanation:
  The longest consecutive subsequence is 5, 6, 7, and 8.

 Time Complexity: O(n)
 Space Complexity: O(n)

 */

func longestConsecutive(_ nums: [Int]) -> Int {
    guard nums.count > 1 else {
        return 0
    }

    // Converting array to set, to allow O(1) average time complexity for checking existence element.
    let numsSet = Set(nums)
    var longestSequence = 0

    for num in nums {
        // Finding the begining of the sequence
        // Only start counting if `num` is the beginning of a sequence
        if !numsSet.contains(num - 1) {
            var currentNum = num
            var currentStreak = 1
            // checking is net number is present in the set
            while numsSet.contains(currentNum + 1) {
                currentNum += 1
                currentStreak += 1
            }
            longestSequence = max(currentStreak, longestSequence)
        }
    }
    return longestSequence
}

let result = longestConsecutive([0,3,7,2,5,8,4,6,0,1])
print(result)
