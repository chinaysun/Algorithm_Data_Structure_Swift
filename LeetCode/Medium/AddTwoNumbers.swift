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

/* input [1,2,3] [2,3,4]
 * output [3,5,7]
 *
 */

class Solution {
        func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var carry:Int = 0
        var answerList:ListNode?
      
        if l1 == nil
        {
            if l2 != nil
            {
                return l2 
            }
            
            return answerList
        }
            
        if l2 == nil
        {
            if l1 != nil
            {
                return l1
            }
            
            return answerList
        }
            
        
        var nextNode = addTwoNumbers(l1?.next, l2?.next)
        
        var val = (l1?.val)! + (l2?.val)!
        
        if val >= 10
        {
            carry = 1
            val = val % 10
        }
        
        answerList = ListNode(val)
        
        if nextNode != nil
        {
            answerList?.next = nextNode
            
            if carry == 1
            {
                checkCarry(answerList?.next)
            }
        }
        
        if carry == 1 && nextNode == nil
        {
            answerList?.next = ListNode(1)
        }
        
    
        return answerList
      
    }
    
    
    private func checkCarry(_ ln:ListNode?)
    {
       var val = (ln?.val)! + 1
        
       if val >= 10
       {
            ln?.val = val % 10
        
            if ln?.next != nil
            {
                checkCarry(ln?.next)
                
            }else
            {
                let nextNode = ListNode(1)
                ln?.next = nextNode
            }
        
       }else
       {
         ln?.val = val
       }
    }
}