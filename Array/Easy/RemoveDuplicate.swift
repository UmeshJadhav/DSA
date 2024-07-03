import UIKit

//RemoveDuplicateFromSortedArray


//Problem Statement: Given an integer array sorted in non-decreasing order, remove the duplicates in place such that each unique element appears only once. The relative order of the elements should be kept the same.

//Note: Return k after placing the final result in the first k slots of the array.

/*
 Example 1:
 Input:
  arr[1,1,2,2,2,3,3]

 Output:
  arr[1,2,3,_,_,_,_]

 arr[1,1,1,2,2,3,3,3,3,4,4]

 Output:
  arr[1,2,3,4,_,_,_,_,_,_,_]

*/

func removeDuplicates(_ array:  [Int]) -> Int {
    var nums = array
    if nums.isEmpty {
        return 0
    }
    var uniqueIndex = 0
    for i in 1..<nums.count {
        if nums[i] != nums [uniqueIndex] {
            uniqueIndex += 1
            nums[uniqueIndex] = nums[i]
        }

    }
    return uniqueIndex + 1
}

removeDuplicates([1,1,2,2,2,3,3])
