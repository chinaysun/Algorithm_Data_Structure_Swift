// Q108. Convert Sorted Array to Binary Search Tree
//Given an array where elements are sorted in ascending order, convert it to a height balanced BST.

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
 
class Solution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        
        return createBST(nums,0,nums.count-1)
    }
    
    private func createBST(_ nums:[Int],_ low:Int,_ high:Int)->TreeNode?
    {
           
        if low > high
        {
            return nil
        }
        
        let mid = (low + high)/2
        
        let root = TreeNode(nums[mid])
        
        root.left = createBST(nums,0,mid-1)
        root.right = createBST(nums,mid+1,high)
        
        return root

    }
}