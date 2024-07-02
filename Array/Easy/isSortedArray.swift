import UIKit

//Problem Statement: Given an array of size n, write a program to check if the given array is sorted in (ascending / Increasing / Non-decreasing) order or not. If the array is sorted then return True, Else return False.
/*
 Example 1:
 Input:
  N = 5, array[] = {1,2,3,4,5}
 Output
 : True

 Example 2:
 Input:
  N = 5, array[] = {5,4,6,7,8}
 Output
 : False.
 */

//Time Complexity: O(n)

func isSortedArray(_ array:[Int]) -> Bool {
    var result = false
    for i in 1..<array.count-1 {
        if array[i - 1] < array [i] {
            result = true
        } else {
            result = false
            break
        }
    }
    return result
}


//isSortedArray([1,2,3,4,5])
