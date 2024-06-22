import UIKit

//Problem Statement: Given an array of N integers, write a program to implement the Insertion sorting algorithm.
/*
 Example 1:
 Input: N = 6, array[] = {13,46,24,52,20,9}
 Output: 9,13,20,24,46,52
 Explanation:
 After sorting the array is: 9,13,20,24,46,52


 Example 2:
 Input: N=5, array[] = {5,4,3,2,1}
 Output: 1,2,3,4,5
 Explanation: After sorting the array is: 1,2,3,4,5
 */

//Time Complexity
//Best Case: O(n) (when the array is already sorted)
//Average Case: O(n^2)
//Worst Case: O(n^2)

func insetionSort(_ inputArray: [Int]) {
    var a = inputArray
    for i in 0..<a.count - 1 {
        var j = i + 1
        while j > 0 {
            if a[j] < a[j-1] {
                let temp = a[j]
                a[j] = a[j-1]
                a[j-1] = temp
            } else {
                break
            }
            j -= 1
        }
    }
    print(a)
}
insetionSort([13,46,24,52,20,9])
