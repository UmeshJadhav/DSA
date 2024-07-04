import UIKit

//Left Rotate the Array by One

//Problem Statement: Given an array of N integers, left rotate the array by one place.

/*
 Example 1:
 Input:
  N = 5, array[] = {1,2,3,4,5}
 Output:
  2,3,4,5,1

 Example 2:
 Input:
  N = 1, array[] = {3}
 Output:
  3

 */

func leftRotationByOne(_ array: [Int]) -> [Int] {
    var a = array

    if a.count == 1 {
        return a
    }
    
    var firstElement = a[0]

    for i in 0..<array.count - 1 {
        a[i] = a[i + 1]
    }
    a[a.count - 1] = firstElement
    return a
}
//let result1 = leftRotationByOne([1,2,3,4,5])
//print(result1)


//Brut force solution
//Time complexity: O(n)
//Space Complexity: O(1)
func leftRotationByKElements(_ array:[Int], k: Int) -> [Int] {
    var a = array
    var copyElementTillK = Array<Int>.init(repeating: 0, count: k)

    for i in 0..<k {
        copyElementTillK[i] = a[i]
    }
    var i = 0
    var j = k

    while j < a.count {
        a[i] = a[j]
        j += 1
        i += 1
    }

    for i in 0..<copyElementTillK.count {
        a[a.count - i - 1] = copyElementTillK[copyElementTillK.count - i - 1]
    }

    return a
}

//let result = leftRotationByKElements([1,2,3,4,5,6,7], k: 3)
//print(result)
//--------------------------------------------------------------------------------------------//

//Problem Statement: Given an array of integers, rotating array of elements by k elements either left or right.
/*
 Example 1:
 Input: N = 7, array[] = {1,2,3,4,5,6,7} , k=2 , right
 Output: 6 7 1 2 3 4 5
 Explanation: array is rotated to right by 2 position .

 Example 2:
 Input: N = 6, array[] = {3,7,8,9,10,11} , k=3 , left
 Output: 9 10 11 3 7 8
 Explanation: Array is rotated to right by 3 position.

 */

//Time complexity: O(n)
//Space Complexity: O(1)


//Optimal Way - reversing
func leftRotation(_ array: inout [Int], pos: Int){

    if array.count == 0 || pos == 0 || pos % array.count == 0 {
        return
    }
//    let rotations = pos % array.count --->Optional
    reverse(&array, start: 0, end: pos - 1)
    reverse(&array, start: pos, end: array.count - 1)
    reverse(&array, start: 0, end: array.count - 1)

}

//var leftRotationArray = [3,7,8,9,10,11]
//leftRotation(&leftRotationArray, pos: 3)
//print(leftRotationArray)

func rightRotation(_ array: inout [Int], pos: Int) {
    if array.count == 0 || pos == 0 || pos % array.count == 0 {
        return
    }
//    let rotations = pos % array.count  ------> optional
    reverse(&array, start: 0, end: array.count - pos - 1)
    reverse(&array, start: array.count - pos, end: array.count - 1)
    reverse(&array, start: 0, end: array.count - 1)
}

func reverse(_ array: inout [Int], start: Int, end: Int) {
    var s = start
    var e = end

    while s < e {
        array.swapAt(s, e)
        s += 1
        e -= 1
    }
}


var rightRotationArray = [1,2,3,4,5,6,7]
rightRotation(&rightRotationArray, pos: 3)
print(rightRotationArray)
