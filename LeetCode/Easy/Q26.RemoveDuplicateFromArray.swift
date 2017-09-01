/* Q26. Remove Duplicates from Sorted Array 
 *
 * Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.
 * Do not allocate extra space for another array, you must do this in place with constant memory.
 * For example,
 * Given input array nums = [1,1,2],
 * Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. 
 * It doesn't matter what you leave beyond the new length.
 *
 *
 * hint: Even thought the function just requires to return the length of the array, but pleace notice that 
 *       the array is inout type var. The testing set requires you to modify the array as well
 *
 */




class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
       
        
       //Could just finish this task as following codes
       //nums = Array(Set(nums)).sorted()
       //return Set(nums).count
        
     var i = 0
        
     while i < nums.count
     {
         if i + 1 < nums.count
         {
             if nums[i] == nums[i+1]
             {
                 nums.remove(at:i+1)
             }else
             {
                 i += 1
             }
             
         }else
         {
             break
         }
     }
        
     return nums.count
        
        
    }
}