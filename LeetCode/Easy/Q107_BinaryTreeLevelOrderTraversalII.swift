//Q107. Binary Tree Level Order Traversal II
//Given a binary tree, return the bottom-up level order traversal of its nodes' values. 
// (ie, from left to right, level by level from leaf to root).


/*
 * For example:
 * Given binary tree [3,9,20,null,null,15,7],
 *    3
 *   / \
 *  9  20
 *    /  \
 *   15   7
 * return its bottom-up level order traversal as:
 * [
 *   [15,7],
 *   [9,20],
 *   [3]
 *  ]
 *、

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
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {       

        return getNodes(root)

    }

    func getNodes(_ root:TreeNode?)->[[Int]]
    {  
        var answer = [[Int]]()
        
        if root == nil
        {
            return answer
        }
        
        var leftNodes = getNodes(root?.left)
        var rightNodes = getNodes(root?.right)
        
        var index = 1
        
        while index <= min(leftNodes.count,rightNodes.count) 
        {
            answer.insert((leftNodes[leftNodes.count - index] + rightNodes[rightNodes.count - index]),at: 0)
            index += 1
        }
        
        while index <= leftNodes.count
        {
            answer.insert(leftNodes[leftNodes.count - index],at: 0)
            index += 1
        }
        
        while index <= rightNodes.count
        {
            answer.insert(rightNodes[rightNodes.count - index],at: 0)
            index += 1
        }
        
        answer.append([(root?.val)!])
        
        return answer
        
        
    }
}