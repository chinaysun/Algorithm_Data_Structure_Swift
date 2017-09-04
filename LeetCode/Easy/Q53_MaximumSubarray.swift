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


    // divide and conquer method
    func maxSubArray3(_ nums: [Int]) -> Int {
        var maxSoFar = Int.min, sum = 0

        for num in nums {
            sum += num
            maxSoFar = max(maxSoFar, sum)
            sum = max(0, sum)
        }

        return maxSoFar        
    }


        func maxSubArray(_ nums: [Int]) -> Int {
        
        func maxCrossingSum(_ nums:[Int],_ low:Int,_ mid:Int,_ high: Int)->Int
        {
            var sum = 0
            var leftSum = Int.min
            
            for i in (low...mid).reversed()
            {
                sum = sum + nums[i]
                if sum > leftSum
                {
                    leftSum = sum
                }
            }
            
            sum = 0
            var rightSum = Int.min
            
            for i in (mid + 1)...high
            {
                sum = sum + nums[i]
                if sum > rightSum
                {
                    rightSum = sum
                }
            }
            
            return leftSum + rightSum
            
            
        }
        
        
        func maxSum(_ nums:[Int],_ low:Int,_ high:Int)->Int
        {
            //boundary
            if low == high
            {
                return nums[low]
            }
            
            let mid = (low + high) / 2
            
            let leftMax = maxSum(nums,low,mid)
            let rightMax = maxSum(nums,mid+1,high)
            let crossMax = maxCrossingSum(nums, low, mid, high)
            
            return max(leftMax, rightMax, crossMax)
            
        }
        
        
        return maxSum(nums,0,nums.count - 1)
        
        
    }


}