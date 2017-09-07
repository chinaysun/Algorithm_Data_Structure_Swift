//Q88 Merge Sorted Array


// Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

// Note:
// You may assume that nums1 has enough space (size that is greater or equal to m + n) 
// to hold additional elements from nums2. T
// he number of elements initialized in nums1 and nums2 are m and n respectively.

// We can consider it as merge sort compare and store


class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        if m == 0
        {
            for index in 0...n-1
            {
                nums1[index] = nums2[index]
            }
            
            return 
               
        }else if n == 0
        {
            return 
        }
        
        //if both array have nums
        var leftArray = [Int]()
        
        for index in 0...m-1
        {
            leftArray.append(nums1[index])  
        }
        
        //compare and sort
        var leftIndex = 0 
        var rightIndex = 0
        var index = 0
        
        while leftIndex < m && rightIndex < n
        {
            if leftArray[leftIndex] <= nums2[rightIndex]
            {
                nums1[index] = leftArray[leftIndex]
                leftIndex += 1
                index += 1
                
            }else
            {
                nums1[index] = nums2[rightIndex]
                rightIndex += 1
                index += 1
                
            }
        }
        
        while leftIndex < m
        {
            nums1[index] = leftArray[leftIndex]
            leftIndex += 1
            index += 1
        }
        
        while rightIndex < n
        {
            nums1[index] = nums2[rightIndex]
            rightIndex += 1
            index += 1
        }
        

        
    }
        

   
}