function palindrome(S) {
  let s = S.toLowerCase();
  let palindromeStatus = "NO";
  let left = 0;
  let right = S.length - 1;
  while (left < right) {
    if (s[left] === s[right]) {
      palindromeStatus = "YES";
    }
    left++;
    right--;
  }
  console.log(palindromeStatus);
}

palindrome("car");