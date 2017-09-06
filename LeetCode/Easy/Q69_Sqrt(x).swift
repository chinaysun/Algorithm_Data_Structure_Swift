/* Q69. Sqrt(x)
 *
 * Implement int sqrt(int x).
 * Compute and return the square root of x.
 *
 */


class Solution {
    func mySqrt(_ x: Int) -> Int {
        
        //Int(sqrt(Double(x)))
        
        if x < 2
        {
            return x
        }
        
        var h = x
        var l = 0
        
        while l < h
        {
            let mid = (h + l)/2      
            
            if mid * mid == x
            {
                return mid
                
            }else if mid * mid > x
            {
                h = mid
                
            }else
            {
                l += 1
            }
        }
        
        return l*l > x ? l-1 : l
        
        
        
    }
}