import UIKit

//Problem Statement: Given two sorted arrays, arr1, and arr2 of size n and m. Find the union of two sorted arrays.

/*
 Example 1:
 Input:

 n = 5,m = 5.
 arr1[] = {1,2,3,4,5}
 arr2[] = {2,3,4,4,5}
 Output:

 {1,2,3,4,5}

 Explanation:

 Common Elements in arr1 and arr2  are:  2,3,4,5
 Distnict Elements in arr1 are : 1
 Distnict Elemennts in arr2 are : No distinct elements.
 Union of arr1 and arr2 is {1,2,3,4,5}

 Example 2:
 Input:

 n = 10,m = 7.
 arr1[] = {1,2,3,4,5,6,7,8,9,10}
 arr2[] = {2,3,4,4,5,11,12}
 Output:
 {1,2,3,4,5,6,7,8,9,10,11,12}
 */

//Brute force solution using Set
//func unionOfSortedArray(_ array1: [Int], _ array2: [Int]) -> [Int] {
//    var resultSet = Set<Int>()
//    resultSet = Set(array1 + array2)
//    // Need to sort, becouse set by default unordered
//    return resultSet.sorted()
//}

// Two Pointer approach
// Time compexity = O(n + m)
// n & m are length of array1 & array2

func unionOfSortedArray(_ array1: [Int], _ array2: [Int]) -> [Int] {
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
        }else {
            if resultArray.last != array1[i] {
                resultArray.append(array2[i])
            }
            j += 1
        }
    }

    // Append remaining elements of array1
    while i < array1.count {
        if resultArray.last != array1[i] {
            resultArray.append(array1[i])
        }
        i += 1
    }

    // Append remaining elements of array2
    while j < array2.count {
        if resultArray.last != array2[j] {
            resultArray.append(array2[j])
        }
        j += 1
    }

    return resultArray
}

let array1 = [1,2,3,4,5,6,7,8,9,10]
let array2 = [2,3,4,4,5,11,12]
let result = unionOfSortedArray(array1, array1)
print(result)
