import UIKit

//Leaders in an Array
//Problem Statement: Given an array, print all the elements which are leaders. A Leader is an element that is greater than all of the elements on its right side in the array.
/*

 Example 1:
 Input:

  arr = [4, 7, 1, 0]
 Output
 :
  7 1 0
 Explanation:

  Rightmost element is always a leader. 7 and 1 are greater than the elements in their right side.

 Example 2:
 Input:

  arr = [10, 22, 12, 3, 0, 6]
 Output:

  22 12 6

Time Complexity: O(n)
Space Complexity: O(n)

 */

func findLeaders(_ array: [Int]) -> [Int] {
    var currentMax = array[array.count-1]
    var resultArray = [Int]()
    //Inserting at first index always to maintain output order
    resultArray.insert(currentMax, at: 0)
    var i = array.count - 1
    while  i > 0 {
        if array[i] > currentMax {
            currentMax = array[i]
            resultArray.insert(currentMax, at: 0)
        }
        i -= 1
    }
    return resultArray
}
let result = findLeaders([10, 22, 12, 3, 0, 6])
print(result)
