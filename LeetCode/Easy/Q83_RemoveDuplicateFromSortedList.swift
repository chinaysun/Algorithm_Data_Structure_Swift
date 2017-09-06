// Q83. Remove Duplicate From sorted List 

//Given a sorted linked list, delete all duplicates such that each element appear only once.
// For example,
// Given 1->1->2, return 1->2.
// Given 1->1->2->3->3, return 1->2->3.




public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
 		}
 }
 

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
   		
   		if head == nil
        {
            return head
        }
        
        var currentNode = head
        
        while currentNode?.next != nil
        {
            if currentNode?.val == currentNode?.next!.val
            {
                currentNode?.next = currentNode?.next!.next
            }else
            {
                currentNode = currentNode?.next
            }
            
        }
        
        
        return head
        
    }

}