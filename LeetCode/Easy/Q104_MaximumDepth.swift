
//Given a binary tree, find its maximum depth.

//The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.


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
    func maxDepth(_ root: TreeNode?) -> Int {
        
        if root == nil
        {
            return 0
        }
        
        let lDepth = maxDepth(root?.left)
        let rDepth = maxDepth(root?.right)
        
        if lDepth > rDepth
        {
            return lDepth + 1
        }else
        {
            return rDepth + 1
        }
        
        
    } 
    
}