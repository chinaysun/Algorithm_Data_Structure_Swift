/* Q66. Plus One
 *
 * Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
 * You may assume the integer do not contain any leading zero, except the number 0 itself.
 * The digits are stored such that the most significant digit is at the head of the list.
 * 
 * Input: [1,0]
 * Output: [1,1]
 */


class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var newDigits = [Int]()
        var carry = 1
        
        for i in (0..<digits.count).reversed()
        {
            var val = digits[i] + carry 
            carry = 0
            
            if val >= 10
            {
                carry = 1
                val = val % 10
            }
            
            newDigits.append(val)
        }
        
        if carry > 0
        {
            newDigits.append(1)
        }
        
        return newDigits.reversed()
        
    }
}