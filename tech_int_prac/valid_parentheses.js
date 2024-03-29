// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:

// Open brackets must be closed by the same type of brackets.
// Open brackets must be closed in the correct order.

var isValid = function(s) {
  let validPairs = {
    "[": "]",
    "{": "}",
    "(": ")"
  };
  let testStack = [];
  for (let i = 0; i < s.length; i++) {
    if (s.charAt(i) in validPairs) {
      testStack.push(s.charAt(i));
    } else if (validPairs[testStack[testStack.length - 1]] === s.charAt(i)) {
      testStack.pop();
    } else {
      return false;
    }
  }
  return !testStack.length;
};

console.log(isValid("[]"));
console.log(isValid(""));
console.log(isValid("{}{}"));
console.log(isValid("}{"));
console.log(isValid("[][][][][]["));
