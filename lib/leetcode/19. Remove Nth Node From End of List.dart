/*
19. Remove Nth Node From End of List
Hint
Given the head of a linked list, remove the nth node from the end of the list and return its head.

Example 1:

Input: head = [1,2,3,4,5], n = 2
Output: [1,2,3,5]

Example 2:
Input: head = [1], n = 1
Output: []
Example 3:

Input: head = [1,2], n = 1
Output: [1]
 
Constraints:

The number of nodes in the list is sz.
1 <= sz <= 30
0 <= Node.val <= 100
1 <= n <= sz
*/
// Answer: -
// class Solution {
//   ListNode? removeNthFromEnd(ListNode? head, int n) {
//     ListNode dummy = ListNode(0, head);
//     ListNode? fast = dummy;
//     ListNode? slow = dummy;

//     for (int i = 0; i < n; i++) {
//       fast = fast!.next;
//     }

//     while (fast?.next != null) {
//       fast = fast!.next;
//       slow = slow!.next;
//     }
//     slow!.next = slow.next!.next;

//     return dummy.next;
//   }
// }

class ListNode {
  int val;
  ListNode? next;

  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    ListNode dummy = ListNode(0, head);
    ListNode? fast = dummy;
    ListNode? slow = dummy;

    // Move fast n steps ahead
    for (int i = 0; i < n; i++) {
      fast = fast!.next;
    }

    // Move both fast and slow until fast reaches the end
    while (fast?.next != null) {
      fast = fast!.next;
      slow = slow!.next;
    }

    // Remove the nth node from the end
    slow!.next = slow.next!.next;

    return dummy.next; // Return the head of the modified list
  }
}
