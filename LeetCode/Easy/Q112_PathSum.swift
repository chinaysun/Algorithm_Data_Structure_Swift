//Q112. Path Sum



/**********************************************************************************
 *
 * Given a binary tree and a sum, determine if the tree has a root-to-leaf path
 * such that adding up all the values along the path equals the given sum.
 *
 * For example:
 * Given the below binary tree and sum = 22,
 *
 *               5
 *              / \
 *             4   8
 *            /   / \
 *           11  13  4
 *          /  \      \
 *         7    2      1
 *
 * return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
 *
 **********************************************************************************/



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
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        
        if let root = root
        {
            return pathSum(root,0,sum)
            
        }else
        {
            return false 
        }
        
    }
    
    func pathSum(_ root:TreeNode?,_ currentSum:Int,_ sum:Int)->Bool
    {
        if let root = root
        {
            let currentSum = currentSum + root.val
            
            let lResult = pathSum(root.left,currentSum,sum)
            let rResult = pathSum(root.right,currentSum,sum)
            
            switch (root.left, root.right) 
            {
                case (nil,nil):
                    return lResult && rResult
                case (nil, _):
                    return rResult
                case (_, nil):
                    return lResult
                case (_, _):
                    return lResult || rResult
            }
            
            
            
        }else
        {
            return currentSum == sum
        }
        
        
    }
    
}