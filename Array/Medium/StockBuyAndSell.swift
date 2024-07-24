import UIKit

//Stock Buy And Sell
//Problem Statement: You are given an array of prices where prices[i] is the price of a given stock on an ith day.

/*
 Example 1:
 Input:
  prices = [7,1,5,3,6,4]
 Output:
  5
 Explanation:
  Buy on day 2 (price = 1) and
 sell on day 5 (price = 6), profit = 6-1 = 5.

 Note
 : That buying on day 2 and selling on day 1
 is not allowed because you must buy before
 you sell.

 Example 2:
 Input:
  prices = [7,6,4,3,1]
 Output:
  0
 Explanation:
  In this case, no transactions are
 done and the max profit = 0.
 */

//Brutforce solution
//Time Complexity: O(n^2)
//SpaceComplexity: O(1)
func maxProfits(_ prices: [Int]) -> Int {
    var buy = 0
    var sell = 0
    var maxProfit = 0
    for i in 1..<prices.count {

        if prices[i-1] < prices[i] {
        
            buy = prices[i-1]
            
            var j = i
            
            while j < prices.count {
                if prices[j] > sell {
                    sell = prices[j]
                }
                j += 1
            }
            let profit = sell - buy
            if profit > maxProfit {
                maxProfit = profit
            }
        }

    }
    return maxProfit
}

//let result = maxProfits([7,6,4,3,1])
//print(result)

//Optimal solution
//Time Complexity: O(n)
//SpaceComplexity: O(1)
func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else { return 0 }
    var minPrice = prices[0]
    var maxProfit = 0
    for price in prices {
        minPrice = min(minPrice, price)
        maxProfit = max(maxProfit, price - minPrice)
    }
    return maxProfit
}
let result = maxProfit([7,1,5,3,6,4])
print(result)
