import UIKit

//Problem Statement:  Given an array of n integers, sort the array using the Quicksort method.
/*
 Example 1:
 Input:  N = 5  , Arr[] = {4,1,7,9,3}
 Output: 1 3 4 7 9

 Explanation: After sorting the array becomes 1, 3, 4, 7, 9

 Example 2:
 Input: N = 8 , Arr[] = {4,6,2,5,7,9,1,3}
 Output: 1 2 3 4 5 6 7 9
 Explanation: After sorting the array becomes 1, 3, 4, 7, 9

 Time Complexity:
 Best Case: O(nlogn)
 Worst Case: O(n^2) - if array is already sorted
 */


func partition(_ array: inout [Int], low: Int, high: Int) -> Int {
    let pivot = array[low]
    var i = low
    var j = high

    while i < j {
        // Move i to the right, looking for an element greater than the pivot
        while i <= high && array[i] <= pivot {
            i += 1
        }
        // Move j to the left, looking for an element less than or equal to the pivot
        while j >= low && array[j] > pivot {
            j -= 1
        }
        if i >= j {
            break
        }
        array.swapAt(i, j)
    }
    // Swap the pivot element with the element at the j position
    array.swapAt(low, j)
    return j
}

func quickSort(_ array: inout [Int], low: Int, high: Int) {
    if low < high {
        let j = partition(&array, low: low, high: high)
        quickSort(&array, low: low, high: j - 1)
        quickSort(&array, low: j + 1, high: high)
    }
}

var inputArray = [4,6,2,5,7,9,1,3]
quickSort(&inputArray, low: 0, high: inputArray.count-1)
print("SortedArray:\(inputArray)")
