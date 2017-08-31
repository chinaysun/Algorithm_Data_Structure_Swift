/* Q: Given a sorted array and a target value, return the index if the target is found. 
 * If not, return the index where it would be if it were inserted in order.
 *
 * You may assume no duplicates in the array.
 * Here are few examples.
 * [1,3,5,6], 5 → 2
 * [1,3,5,6], 2 → 1
 * [1,3,5,6], 7 → 4
 * [1,3,5,6], 0 → 0
 *
 * because the array is sorted, we could consider to user binary search
 *
 */


class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        func binarySearch(_ nums:[Int],_ low:Int,_ high:Int,_ key:Int) -> Int
        {
            if high >= low
            {
                let mid = (low + high)/2
                let numb = nums[mid]
                
                if key == numb
                {
                    return mid
                }
            
                if key > numb
                {
                    return binarySearch(nums,mid+1,high,key)
                }
            
                if key < numb
                {         
                    return binarySearch(nums,low,mid-1,key)
                }
            }

            return low
            
        }
        
        return binarySearch(nums,0,nums.count-1,target)
        
    }
}

/* Sometime the recursion is not necessary to build another function, 
 * try to consider to use while to implement the same purpose
 *
 * func searchInsert(_ nums: [Int], _ target: Int) -> Int {
 *       var l = 0
 *       var r = nums.count-1
 *       
 *       while l<=r {
 *           let m = (r+l)/2
 *           if target < nums[m] {r = m - 1}
 *           else if target > nums[m] {l = m+1}
 *           else {return m}
 *       }
 *       return l
 *   }
 */



