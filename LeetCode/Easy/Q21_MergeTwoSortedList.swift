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


/* Q: 21. Merge Two Sorted Lists
 *
 * Merge two sorted linked lists and return it as a new list. 
 * The new list should be made by splicing together the nodes of the first two lists.
 */ 


class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var newl1 = l1
        var newl2 = l2
        let dummyList = ListNode(0)
        var currentList = dummyList
        
        while newl1 != nil || newl2 != nil
        {
            let l1Val = newl1 != nil ? newl1?.val : Int.max
            let l2Val = newl2 != nil ? newl2?.val : Int.max
            
            currentList.next = ListNode(min(l1Val!,l2Val!))
            currentList = currentList.next!
            
            if l1Val! < l2Val!
            {
                newl1 = newl1?.next 
                
            }else
            {
                newl2 = newl2?.next
            }
            
        }
        
        
        return dummyList.next
        
        
    }
}