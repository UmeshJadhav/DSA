import UIKit


//Problem Statement: Given an array of N integers, write a program to implement the Bubble Sorting algorithm.
//Time Complexity
//Best Case: O(n) (when the array is already sorted)
//Average Case: O(n^2)
//Worst Case: O(n^2)
/*
 Example 1:
 Input: N = 6, array[] = {13,46,24,52,20,9}
 Output: 9,13,20,24,46,52
 Explanation: After sorting we get 9,13,20,24,46,52


 Input: N = 5, array[] = {5,4,3,2,1}
 Output: 1,2,3,4,5
 Explanation: After sorting we get 1,2,3,4,5
 */
func bubbleSort(_ inputArray: [Int]) {
    var a = inputArray
    for i in 0..<a.count - 1 {
        var j = i + 1
        while j < a.count {
            if a[j] < a[i] {
                let temp = a[j]
                a[j] = a[i]
                a[i] = temp
            }
            j += 1
        }
    }
    print(a)
}
bubbleSort([5,4,3,2,1])

