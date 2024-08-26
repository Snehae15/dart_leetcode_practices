/*2. Add Two Numbers

Companies
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

 

Example 1:


Input: l1 = [2,4,3], l2 = [5,6,4]
Output: [7,0,8]
Explanation: 342 + 465 = 807.
Example 2:

Input: l1 = [0], l2 = [0]
Output: [0]
Example 3:

Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
Output: [8,9,9,9,0,0,0,1]
 

Constraints:

The number of nodes in each linked list is in the range [1, 100].
0 <= Node.val <= 9
It is guaranteed that the list represents a number that does not have leading zeros.//
*/
//class Solution {
//   ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
//     ListNode dummy = ListNode();
//     ListNode temp = dummy;
//     int carry = 0;

//     while (l1 != null || l2 != null || carry != 0) {
//       int sum = carry;

//       if (l1 != null) {
//         sum += l1.val;
//         l1 = l1.next;
//       }

//       if (l2 != null) {
//         sum += l2.val;
//         l2 = l2.next;
//       }

//       carry = sum ~/ 10;
//       ListNode node = ListNode(sum % 10);
//       temp.next = node;
//       temp = temp.next!;
//     }

//     return dummy.next;
//   }
// }

//complete code with main funciton
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    // Create a dummy node to handle edge cases
    ListNode dummy = ListNode(0, head);
    ListNode? fast = dummy;
    ListNode? slow = dummy;

    // Move fast pointer n steps ahead
    for (int i = 0; i < n; i++) {
      fast = fast!
          .next; // Use '!' since fast is guaranteed to be non-null during this loop
    }

    // Move both fast and slow pointers until fast reaches the end
    while (fast?.next != null) {
      fast = fast!.next;
      slow = slow!.next;
    }

    // Remove the nth node from the end
    slow!.next = slow.next!
        .next; // Use '!' since slow and slow.next are guaranteed to be non-null

    // Return the head of the modified list
    return dummy.next;
  }
}

// Example usage:
void main() {
  ListNode l1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5)))));
  int n = 2;

  Solution solution = Solution();
  ListNode? result = solution.removeNthFromEnd(l1, n);

  // Print the result linked list
  while (result != null) {
    print(result.val);
    result = result.next;
  }
}
