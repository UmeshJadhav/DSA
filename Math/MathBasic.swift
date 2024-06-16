import UIKit

///Problem Statement: Given an integer N, return the number of digits in N.

/*
 Example 1:
 Input:N = 12345
 Output:5
 Explanation:  The number 12345 has 5 digits.
 Example 2:
 Input:N = 7789
 Output: 4
 Explanation: The number 7789 has 4 digits.
 */


func countTheNumberOfDigitFor(number: Int) {
    var no = number
    var counter = 0
    while no > 0 {
        no = no/10
        print(no)
        counter += 1
    }
    print("counter:\(counter)")
}
//countTheNumberOfDigitFor(number: 12345)
//--------------------------------------------------------------------------------------

///Problem Statement: Given an integer N return the reverse of the given number.
/*
 Example 1:
 Input:N = 12345
 Output:54321
 Explanation: The reverse of 12345 is 54321.
 Example 2:
 Input:N = 7789
 Output: 9877
 Explanation: The reverse of number 7789 is 9877.
 */

func reverseNumber(number: Int) -> Int {
    var isNegative = number < 0
    var no = abs(number)
    var reverse = 0
    while no > 0 {
        let lastDigit = no%10
        // Check for overflow before multiplying by 10 and adding pop
        if reverse > Int32.max/10 || reverse == Int32.max/10 && lastDigit > 7 {
            reverse = 0
            break
        }
        no = no/10
        reverse = (reverse * 10) + lastDigit
    }
    return isNegative ? -reverse : reverse
}
//reverseNumber(number: 003450)
//--------------------------------------------------------------------------------------

///Problem Statement: Given an integer N, return true if it is a palindrome else return false.
///A palindrome is a number that reads the same backward as forward. For example, 121, 1331, and 4554 are palindromes because they remain the same when their digits are reversed.
/*
 Example 1:
 Input:N = 4554
 Output:Palindrome Number
 Explanation: The reverse of 4554 is 4554 and therefore it is palindrome number
 Example 2:
 Input:N = 7789
 Output: Not Palindrome
 Explanation: The reverse of number 7789 is 9877 and therefore it is not palindrome
 */
func checkPalindorm(number: Int) -> Bool {
    var no = number
    var reverse = 0
    while no > 0 {
        let lastDigit = no%10
        no = no/10
        reverse = (reverse * 10) + lastDigit
    }
    return reverse == number
}
//checkPalindorm(number: 4554)
//--------------------------------------------------------------------------------------

///Problem Statement: Given an integer N, return true it is an Armstrong number otherwise return false.
///An Amrstrong number is a number that is equal to the sum of its own digits each raised to the power of the number of digits.
/*
 Example 1:
 Input:N = 153
 Output:True
 Explanation: 13+53+33 = 1 + 125 + 27 = 153
 Example 2:
 Input:N = 371
 Output: True
 Explanation: 33+53+13 = 27 + 343 + 1 = 371
 */

func checkArmstrongNumber(number: Int) -> Bool {
    var n = number
    var sum = 0
    while n > 0 {
        let digit = n % 10
        sum += digit * digit * digit
        n /= 10
    }

    return sum == number
}

//checkArmstrongNumber(number: 153)
//--------------------------------------------------------------------------------------

///Problem Statement: Given an integer N, return all divisors of N.
///A divisor of an integer N is a positive integer that divides N without leaving a remainder. In other words, if N is divisible by another integer without any remainder, then that integer is considered a divisor of N.
/*
 Example 1:
 Input:N = 36
 Output:[1, 2, 3, 4, 6, 9, 12, 18, 36]
 Explanation: The divisors of 36 are 1, 2, 3, 4, 6, 9, 12, 18, 36.
 Example 2:
 Input:N =12
 Output: [1, 2, 3, 4, 6, 12]
 Explanation: The divisors of 12 are 1, 2, 3, 4, 6, 12.
 */

func printAllDivisorFor(number: Int) {
    var n = number
    if n == 0 || n == 1 {
        print(n)
        return
    }

    var resultArray = Array<Int>()

    for i in 1...n {
        if n%i == 0 {
            resultArray.append(i)
        }
    }
    print(resultArray)
}
//printAllDivisorFor(number: 12)

//--------------------------------------------------------------------------------------
///Problem Statement: Given an integer N, check whether it is prime or not. A prime number is a number that is only divisible by 1 and itself and the total number of divisors is 2.
/*
 Example 1:
 Input:N = 2
 Output:True
 Explanation: 2 is a prime number because it has two divisors: 1 and 2 (the number itself).
 Example 2:
 Input:N =10
 Output: False
 Explanation: 10 is not prime, it is a composite number because it has 4 divisors: 1, 2, 5 and 10.
 */

func isPrimeNumber(number: Int) -> Bool {
    var n = number
    var cnt = 0
    for i in 1...n {
        if n%i == 0 {
            cnt += 1
        }
    }
    return cnt == 2
}
isPrimeNumber(number: 1483)
