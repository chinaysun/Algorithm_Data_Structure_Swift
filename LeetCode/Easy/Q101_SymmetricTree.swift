 // Q 101 Symmetric Tree
 // Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

 // For two trees to be mirror images, the following three
 // conditions must be true
 // 1 - Their root node's key must be same
 // 2 - left subtree of left tree and right subtree
 //      of right tree have to be mirror images
 // 3 - right subtree of left tree and left subtree
 //      of right tree have to be mirror images

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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        

    	return isMirror(root,root)

    }

    private func isMirror(_ root1:TreeNode?,_ root2:TreeNode?)
    {
    	if root1 == nil && root2 == nil
    	{
    		return true 
    	}

    	if root1 != nil && root2 != nil
    	{
    		if root1?.val == root2?.val
    		{
    			return isMirror(root1?.left,root2?.right) && isMirror(root1?.right,root2.left)
    		}
    	}

    	return false 

    }

}