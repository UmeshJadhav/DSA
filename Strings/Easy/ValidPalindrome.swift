/*
A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.
Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
Example 3:

Input: s = " "
Output: true
Explanation: s is an empty string "" after removing non-alphanumeric characters.
Since an empty string reads the same forward and backward, it is a palindrome.

*/

func isPalindrome(_ s: String) -> Bool {
    let inputArray = s.lowercased().filter { $0.isNumber || $0.isLetter }.map({$0})
    var start = 0
    var end = inputArray.count - 1
    while start < end {
        if inputArray[start] == inputArray[end] {
            start += 1
            end -= 1
        } else {
            return false
        }
    }
    return true
}
print(isPalindrome("A man, a plan, a canal: Panama"))
