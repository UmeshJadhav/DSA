import UIKit

//Problem Statement: Given an array, find the second smallest and second largest element in the array. Print ‘-1’ in the event that either of them doesn’t exist

func secondHighestNumber(_ array: [Int]) -> Int {
    var highest = Int.min
    var secondHighest = Int.min

    for i in 0..<array.count {

        if array[i] > highest {
            secondHighest = highest
            highest = array[i]
        } else if array[i] > secondHighest {
            secondHighest = array[i]
        }
    }

    return secondHighest
}
//print(secondHighestNumber([1,2,4,7,7,5,10,14]))

//Check if an Array is Sorted

func isSorted(_ array:[Int]) -> Bool {
    var isSorted = false
    for i in 1..<array.count - 1 {
        if array[i - 1] < array[i] {
            isSorted = true
        } else {
            isSorted = false
            break
        }
    }
    return isSorted
}

//print(isSorted([5,4,6,7,8]))


//Remove Duplicates in-place from Sorted Array


// Given an integer array sorted in non-decreasing order, remove the duplicates in place such that each unique element appears only once. The relative order of the elements should be kept the same.
//arr[1,1,2,2,2,3,3]

func removeDuplicate(_ array: inout [Int]) {
    var i = 0
    var j = i + 1
    while j < array.count {
        if array[i] != array[j] {
            i += 1
            array[i] = array[j]
            j += 1
        }
        j += 1
    }
}

//var array = [1,1,1,2,2,3,3,3,3,4,4]
//removeDuplicate(&array)
//print(array)


// Rotate array by K elements
//[1,2,3,4,5,6,7] : k = 2
//Output : 3, 4, 5, 6, 7, 1, 2

func rotateArray(_ array: inout [Int], by k: Int) {


    var tempArray = Array.init(repeating: 0, count: k)

    var swapIndex = k
    for i in 0..<k {
        tempArray[i] = array[i]
    }

    var  i = 0
    var j = k
    while j < array.count {
        array[i] = array[j]
        j += 1
        i += 1
    }

    for i in 0..<tempArray.count {
        array[array.count - i - 1] = tempArray[tempArray.count - i - 1]
    }

}
//var inputArray = [1,2,3,4,5,6,7]
//rotateArray(&inputArray, by: 2)
//print(inputArray)


//Problem Statement: You are given an array of integers, your task is to move all the zeros in the array to the end of the array and move non-negative integers to the front by maintaining their order.
/*
 Input:
  1 ,0 ,2 ,3 ,0 ,4 ,0 ,1
 Output:
  1 ,2 ,3 ,4 ,1 ,0 ,0 ,0
 */


func moveZeroes(_ array: inout [Int]) {

    var nonZeroIndex = 0

    for i in 0..<array.count {
        if array[i] != 0 {
            array[nonZeroIndex] = array[i]
            nonZeroIndex += 1
        }
    }

    for i in nonZeroIndex..<array.count {
        array[i] = 0
    }


}
//var inpurtArray = [ 1 ,0 ,2 ,3 ,0 ,4 ,0 ,1]
//moveZeroes(&inpurtArray)
//print(inpurtArray)


func unionOf(_ array1:[Int], _ array2:[Int]) ->[Int] {
    var resultArray = [Int]()


    var i = 0
    var j = 0

    while i < array1.count && j < array2.count {

        if array1[i] == array2[j] {
            if resultArray.last != array1[i] {
                resultArray.append(array1[i])
            }
            i += 1
            j += 1
        }else if array1[i] < array2[j] {
            if resultArray.last != array1[i] {
                resultArray.append(array1[i])
            }
            i += 1
        } else {
            if resultArray.last != array1[j] {
                resultArray.append(array2[i])
            }
            j += 1
        }
    }

    while i < array1.count {
        if resultArray.last != array1[i] {
            resultArray.append(array1[i])
        }
        i += 1
    }

    while j < array2.count {
        if resultArray.last != array2[j] {
            resultArray.append(array2[j])
        }
        j += 1
    }

    return resultArray
}

var arr1 = [1,2,3,4,5,6,7,8,9,10]
var arr2 = [2,3,4,4,5,11,12]

let reult = unionOf(arr1, arr2)
print(reult)
