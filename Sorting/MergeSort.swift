import UIKit

//Problem:  Given an array of size n, sort the array using Merge Sort.
/*
 Example 1:
 Input: N=5, arr[]={4,2,1,6,7}
 Output: 1,2,4,6,7,


 Example 2:
 Input: N=7,arr[]={3,2,8,5,1,4,23}
 Output: 1,2,3,4,5,8,23
 */

func merge(array: inout [Int], start: Int, mid: Int, end: Int) {
    var resultArray = [Int]()

    var i = start
    var j = mid + 1

    while i <= mid && j <= end {
        if array[i] <= array[j] {
            resultArray.append(array[i])
            i += 1
        }else {
            resultArray.append(array[j])
            j += 1
        }
    }

    //Copying all the remaning element from first part of array
    while i <= mid {
        resultArray.append(array[i])
        i += 1
    }
    //Copying all the remaning element from second part of array
    while j <= end {
        resultArray.append(array[j])
        j += 1
    }

    // Copy back the merged elements to the original array
    for (index, value) in resultArray.enumerated() {
        array[start + index] = value
    }
}


func mergeSort(array: inout [Int], start: Int, end: Int) {
    var mid = (start + end)/2

    if start >= end {
        return
    }

    mergeSort(array: &array, start: start, end: mid)
    mergeSort(array: &array, start: mid + 1, end: end)
    merge(array: &array, start: start, mid: mid, end: end)
}

var inputArray = [4,2,1,6,7]
mergeSort(array: &inputArray, start: 0, end: inputArray.count-1)
print(inputArray)
