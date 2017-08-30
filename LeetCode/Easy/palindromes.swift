/*
 *  Could negative integers be palindromes? (ie, -1)
 *
 *  If you are thinking of converting the integer to string, note the restriction of using extra space.
 *
 *  You could also try reversing an integer. However, if you have solved the problem "Reverse Integer"
 *  you know that the reversed integer might overflow*.    How would you handle such case?
 *  There is a more generic way of solving this problem.
 *
 *  
 *
 */

 class Solution
 {
	func isPalindrome(_ x: Int) -> Bool {
            
			//negative could not be palindrome
            if x < 0 || x % 10 == 0 {
                 return x == 0
            } 

            // I know the reverse Number but if we just check the half of number, the we could save the time consumption
            var x = x
            var halfReversedX = 0

            while x > halfReversedX {
                halfReversedX = halfReversedX * 10 + x % 10
                x /= 10
            }

            // even num of digits situation || odd num of digits situaition
            return x == halfReversedX || x == halfReversedX / 10
        }

 }