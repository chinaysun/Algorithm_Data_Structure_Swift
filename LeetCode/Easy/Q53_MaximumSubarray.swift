/*  Q53.Maximum Subarray
 *
 *  Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
 *
 *  For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
 *  the contiguous subarray [4,-1,2,1] has the largest sum = 6.
 */

 class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var max = Int.min
        
        for i in 0..<nums.count
        {
           if nums[i] > max
           {
                max = nums[i]
           }
           
           var val = nums[i]
            
           for j in (i + 1)..<nums.count
           {
               val += nums[j]
            
               if val > max
               {
                  max = val
               }
            
           }
            
            
        }
        
        
        return max
        
        
    }

    func maxSubArray2(_ nums: [Int]) -> Int {
        var maxSoFar = Int.min, sum = 0

        for num in nums {
            sum += num
            maxSoFar = max(maxSoFar, sum)
            sum = max(0, sum)
        }

        return maxSoFar        
    }
}