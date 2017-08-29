/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
 func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var answerList:ListNode?
        var carry = 0
        
        var newL1 = l1
        var newL2 = l2
        
        
        while newL1 != nil && newL2 != nil
        {
            var val = (newL1?.val)! + (newL2?.val)! + carry
            
            carry = 0 
            
            if val >= 10
            {
                val = val % 10
                carry = 1
            }
            
            let newNode = ListNode(val)
            
            if answerList == nil
            {
                answerList = newNode
            }else
            {
                checkCurrentNode(answerList, newNode)
            }
            
            newL1 = newL1?.next
            newL2 = newL2?.next
        }
        
        if newL1 == nil && newL2 == nil && carry == 1
        {
            let newNode = ListNode(1)
            
            
            if answerList == nil
            {
                answerList = newNode
            }else
            {
                checkCurrentNode(answerList, newNode)
            }
            
            
            
            return answerList
        }
        
        if newL1 == nil && newL2 != nil
        {
            if carry == 1
            {
                updateRestLinkNode(newL2!)
            }
            
            if answerList == nil
            {
                answerList = newL2!
            }else
            {
                checkCurrentNode(answerList, newL2!)
            }
            
            return answerList
        }
        
        if newL1 != nil && newL2 == nil
        {
            if carry == 1
            {
                updateRestLinkNode(newL1!)
            }
            
            if answerList == nil
            {
                answerList = newL1!
            }else
            {
                checkCurrentNode(answerList, newL1!)
            }
            return answerList
        }
        
        
        
        return answerList
        
        
    }
    
    private func updateRestLinkNode(_ restListNode:ListNode)
    {
        let val = restListNode.val + 1
        
        if val >= 10
        {
            restListNode.val = val % 10
            
            if restListNode.next == nil
            {
                let newNode = ListNode(1)
                restListNode.next = newNode
                
            }else
            {
                updateRestLinkNode(restListNode.next!)
            }
            
        }else
        {
            restListNode.val = val
        }
        
    }
    
    private func checkCurrentNode(_ rootNode:ListNode?,_ newNode:ListNode)
    {
        if rootNode?.next == nil
        {
            rootNode?.next = newNode
            
        }else
        {
            checkCurrentNode(rootNode?.next, newNode)
        }
    }

    

}