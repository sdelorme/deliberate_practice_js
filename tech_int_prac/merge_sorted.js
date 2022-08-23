// You are given the heads of two sorted linked lists list1 and list2.

// Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.

// Return the head of the merged linked list.

 

// Example 1:


// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]
// Example 2:

// Input: list1 = [], list2 = []
// Output: []
// Example 3:

// Input: list1 = [], list2 = [0]
// Output: [0]

/**
//  * Definition for singly-linked list.
//  * function ListNode(val, next) {
//  *     this.val = (val===undefined ? 0 : val)
//  *     this.next = (next===undefined ? null : next)
//  * }
//  */
// /**
//  * @param {ListNode} list1
//  * @param {ListNode} list2
//  * @return {ListNode}
//  */

// function ListNode(val, next) {
//   this.val = (val === undefined ? 0 : val);
//   this.next = (next === undefined ? null : next);
// }

var mergeTwoLists = function(list1, list2) {
  let newList = new ListNode(0);
  let newListHead = newList;
  while (list1 !== null && list2 !== null) {
    if (list1.val <= list2.val) {
      newList.next = list1;
      list1 = list1.next;
    } else {
      newList.next = list2;
      list2 = list2.next;
    }
    newList = newList.next;
  }
  if (list1 === null) {
    newList.next = list2;
  } else {
    newList.next = list1;
  }
  return newListHead.next;
};

console.log(mergeTwoLists([1,2,4], [1,3,4]));