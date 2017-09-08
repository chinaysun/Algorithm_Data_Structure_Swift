//Q100 is Same Tree?

// Given two binary trees, write a function to check if they are equal or not.
// Two binary trees are considered equal if they are structurally identical and the nodes have the same value.

// Solution 1 - using postOrder to get the whole tree into an array the compare those array
// Solution 2 - Compare directly








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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil
        {
            return true
        }
        
        let treeP = postOrder(p)
        let treeQ = postOrder(q)
       
        var index = 0
        
        while index < treeP.count && index < treeQ.count
        {
            
            if treeP[index] != treeQ[index]
            {
                return false
            }
            
            index += 1
            
        }
        
        if index < treeP.count || index < treeQ.count
        {
            return false
        }
        
        return true
        
        
    }
    
    func postOrder(_ tree:TreeNode?)->[Int]
    {
        
        var treeNodes = [Int]()

        if tree != nil
        {
            
            let leftTreeNodes = postOrder(tree?.left)
            let rightTreeNodes = postOrder(tree?.right)
            
        
            for nodesVal in leftTreeNodes
            {
                treeNodes.append(nodesVal)
            }
            

            for nodesVal in rightTreeNodes
            {
                treeNodes.append(nodesVal)
            }
       

            treeNodes.append(tree!.val)
            return treeNodes
            
        
        }
    
        treeNodes.append(Int.min)
    
        return treeNodes
        
        
    }
    
}

class Solution2 {

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
            
        if p == nil && q == nil
        {
            return true
        }else if (p == nil && q != nil) || (q == nil && p != nil){
            return false
        }
            
            
        return p?.val == q?.val && isSameTree(p?.left,q?.left) && isSameTree(q?.right,p?.right)
            
    }

}

