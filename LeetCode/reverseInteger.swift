/* Reverse digits of an integer.
 * Example1: x = 123, return 321
 * Example2: x = -123, return -321
 * The input is assumed to be a 32-bit signed integer. Your function should return 0 when the reversed integer overflows.
 */

class Solution {
    func reverse(_ x: Int) -> Int {
        
        var reversedX = 0
        var x = x
        
        while x != 0
        {
            reversedX = reversedX * 10 + x % 10
            x = x / 10
            
            if (reversedX < 0 && Int(Int32.min) > reversedX ) { return 0 }
            if (reversedX > 0 && Int(Int32.max) < reversedX ) { return 0 }
             
        }
        
        return reversedX
        
        
    }
}