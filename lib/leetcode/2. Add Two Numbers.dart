// class Solution {
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
