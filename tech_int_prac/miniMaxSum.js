// 'use strict';

// process.stdin.resume();
// process.stdin.setEncoding('utf-8');

// let inputString = '';
// let currentLine = 0;

// process.stdin.on('data', function(inputStdin) {
//     inputString += inputStdin;
// });

// process.stdin.on('end', function() {
//     inputString = inputString.split('\n');

//     main();
// });

// function readLine() {
//     return inputString[currentLine++];
// }

// /*
//  * Complete the 'miniMaxSum' function below.
//  *
//  * The function accepts INTEGER_ARRAY arr as parameter.
//  */

// function miniMaxSum(arr) {
//     // Write your code here

// }

// function main() {

//     const arr = readLine().replace(/\s+$/g, '').split(' ').map(arrTemp => parseInt(arrTemp, 10));

//     miniMaxSum(arr);
// }
function miniMaxSum(arr) {
  // Write your code here
  arr.sort();
  let minSum = 0;
  let maxSum = 0;
  for (let i = 0; i < arr.length - 1; i++) {
    minSum += arr[i];
  }
  for (let j = arr.length - 1; j > 0; j--) {
    maxSum += arr[j];
  }
  console.log(minSum + " " + maxSum);
}
miniMaxSum([2,3,5,4,1]);