/* Q27. Remove Element 
 * 
 * Given an array and a value, remove all instances of that value in place and return the new length.
 * Do not allocate extra space for another array, you must do this in place with constant memory.
 *
 * The order of elements can be changed. It doesn't matter what you leave beyond the new length.
 *
 * Example:
 * Given input array nums = [3,2,2,3], val = 3
 * Your function should return length = 2, with the first two elements of nums being 2.
 */





class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        var checkedIndex = nums.startIndex
        var contentIndex = nums.startIndex
        
        while checkedIndex < nums.endIndex
        {
            if nums[checkedIndex] != val
            {
                nums[contentIndex] = nums[checkedIndex]
                contentIndex += 1
            }
            
            checkedIndex += 1
            
        }
        
        return contentIndex
        
    }
}