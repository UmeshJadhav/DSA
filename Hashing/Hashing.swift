import UIKit

//Problem statement: Given an array, we have found the number of occurrences of each element in the array.
/*
Example 1:
Input: arr[] = {10,5,10,15,10,5};
Output: 10  3
        5  2
        15  1

Example2:
Input: arr[] = {2,2,3,4,4,2};
Output: 2  3
        3  1
        4  2
*/

func occuranceOfElement(_ elements: [Int]) {
    var resultMap = Dictionary<Int, Int>()

    for element in elements {
        if resultMap[element] != nil {
            resultMap[element]! += 1
        } else {
            resultMap[element] = 1
        }
    }

   print(resultMap)
}
//occuranceOfElement([10,5,10,15,10,5])
//--------------------------------------------------------------------------

//Problem Statement: Given an array of size N. Find the highest and lowest frequency element.
/*
 Example 1:
 Input: array[] = {10,5,10,15,10,5};
 Output: 10 15
 Explanation: The frequency of 10 is 3, i.e. the highest and the frequency of 15 is 1 i.e. the lowest.

 Example 2:

 Input: array[] = {2,2,3,4,4,2};
 Output: 2 3
 Explanation: The frequency of 2 is 3, i.e. the highest and the frequency of 3 is 1 i.e. the lowest.
 */

func higestAndLowestFrquencyFrom(_ array: [Int]) {
    var resultMap = Dictionary<Int, Int>()
    for element in array {
        if resultMap[element] != nil {
            resultMap[element]! += 1
        } else {
            resultMap[element] = 1
        }
    }

    var max = resultMap.first
    var min = resultMap.first

    for item in resultMap {
        if item.value < min?.value ?? 0 {
            min = item
        }
        if item.value > max?.value ?? 0 {
            max = item
        }
    }

    if let minKey = min?.key, 
        let maxKey = max?.key {
        print("\(minKey) \(maxKey)")
    }
}
//higestAndLowestFrquencyFrom([2,2,3,4,4,2])
