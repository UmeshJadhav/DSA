import UIKit


func printName(for times: Int) {
    var counter = 1
    if counter > times {
        return
    }

    printName(for: times - counter)
    print("Umesh\(times)")
    counter += 1
}
//printName(for: 4)

//Problem: Print from 1 to N using Recursion
func printTo(no: Int) {
    if no < 1 {
        return
    }
    printTo(no: no - 1)
    print(no)
}
//printTo(no:10)
//-----------------------------------------------------------------
            
//Problem: Print from N to 1 using Recursion
func printToOne(no: Int) {
    if no < 1 {
        return
    }
    print(no)
    printTo(no: no - 1)
}
//printToOne(no:10)
//-----------------------------------------------------------------
            
//Problem statement: Given a number ‘N’, find out the sum of the first N natural numbers.
func sumOf(no: Int) -> Int {
    if no < 1 {
        return 0
    }
    return no + sumOf(no: no - 1)
}
//sumOf(no: 6)
//-----------------------------------------------------------------
            
//Problem Statement: Given a number X,  print its factorial.

func factorial(_ no: Int) -> Int {
    if no < 1 {
        return 1
    }
    return no * factorial(no - 1)
}
//factorial(6)
//-----------------------------------------------------------------
            
func fibonaci(no: Int) -> Int {
    if no < 2 {
        return no
    }
    return fibonaci(no: no - 1) + fibonaci(no: no - 2)
}
//fibonaci(no: 4)
//-----------------------------------------------------------------

//Problem Statement: You are given an array. The task is to reverse the array and print it.
/*
 Example 1:
 Input: N = 5, arr[] = {5,4,3,2,1}
 Output: {1,2,3,4,5}

 Example 2:
 Input: N=6 arr[] = {10,20,30,40}
 Output: {40,30,20,10}
 */
func swap(_ first: Int, _ second: Int, _ array: inout [Int]) {
    let temp = array[first]
    array[first] = array[second]
    array[second] = temp
}

//Two Pointer approch
func reverseArray(_ array: [Int]) {
    var a = array
    var start = 0
    var end = array.count - 1

    while start < end {
        swap(start, end, &a)
        start += 1
        end -= 1
    }
    print(a)
}

//reverseArray([5,4,3,2,1])

//Recusive Approach
func reverseArrayUsingRecurrsion(_ array: [Int], _ start: Int, _ end: Int) -> [Int] {
    var a = array
    if start < end {
        swap(start, end, &a)
        reverseArrayUsingRecurrsion(a, start + 1, end - 1)
    }
    return a
}

var inputeArray = [9,8,7,6,4]
print(reverseArrayUsingRecurrsion(inputeArray, 0, inputeArray.count - 1))

