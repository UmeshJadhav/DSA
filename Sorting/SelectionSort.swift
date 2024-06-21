import UIKit

//Problem Statement: Given an array of N integers, write a program to implement the Selection sorting algorithm.
//Time Complexity
//Best Case: O(n^2)
//Average Case: O(n^2)
//Worst Case: O(n^2)
/*
 Example 1:
 Input: N = 6, array[] = {13,46,24,52,20,9}
 Output: 9,13,20,24,46,52
 Explanation: After sorting the array is: 9, 13, 20, 24, 46, 52

 Example 2:
 Input: N=5, array[] = {5,4,3,2,1}
 Output: 1,2,3,4,5
 Explanation: After sorting the array is: 1, 2, 3, 4, 5
 */
func selectionSort(_ inputArray: [Int]) {
    var a = inputArray
    //Array iteration
    for i in 0..<a.count - 1 {
        var minIndex = i
        //Finding minimum number index from i+1 to n
        for j in (i + 1)..<a.count {
            if a[j] < a[minIndex] {
                minIndex = j
            }
        }
        //If found mininimum number index is not same as i then swapping minimumb number index with i
        if minIndex != i {
            let temp = a[i]
            a[i] = a[minIndex]
            a[minIndex] = temp
        }
    }
    print(a)
}
selectionSort([13,46,24,52,20,9])
