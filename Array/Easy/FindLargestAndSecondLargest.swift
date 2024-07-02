import UIKit

//Problem Statement: Given an array, we have to find the largest element in the array.
/*
Example 1:
Input:
 arr[] = {2,5,1,3,0};
Output:
 5
Explanation:
 5 is the largest element in the array.

Example2:
Input:
 arr[] = {8,10,5,7,9};
Output:
 10
Explanation:
 10 is the largest element in the array.
*/

//Time Complexity: O(n)

func findLargestNumber(_ array: [Int]) -> Int {
    var largest = Int.min
    for i in 0..<array.count {
        if array[i] > largest {
            largest = array[i]
        }
    }
    return largest
}
//findLargestNumber([8,10,5,7,9])

func findSecondHighestNumber(_ array:[Int]) -> (smax: Int, smin: Int) {

    ///Two Approaches
    ///1. Sort the array and return array.count - 2
    ///2. Two variable approch to track highest and second highest value

    var highest = Int.min
    var secondHighest = Int.min
    var lowest = Int.max
    var secondLowest = Int.max
    //Maximum
    for i in 0..<array.count {
        if array[i] > highest {
            secondHighest = highest
            highest = array[i]
        } else if array[i] > secondHighest {
            secondHighest = array[i]
        }
    }

    //Minimum
    for i in 0..<array.count {
        if array[i] < lowest {
            secondLowest = lowest
            lowest = array[i]
        } else if array[i] < secondLowest {
            secondLowest = array[i]
        }

    }
    return (secondHighest, secondLowest)
}
//findSecondHighestNumber([8,10,5,7,9])
