// Write your function here:
const finalGrade = (number1, number2, number3) => {
  if (number1 < 0 || number2 < 0 || number3 < 0) {
    return 'You have entered an invalid grade.';
  } else if (number1 > 100 || number2 > 100 || number3 > 100) {
    return 'You have entered an invalid grade.';
  }
  let average = ((number1 + number2 + number3) / 3);
  if (average > -1 && average < 60) {
    return 'F';
  } else if (average > 59 && average < 70) {
    return 'D';
  } else if (average > 69 && average < 80) {
    return 'C';
  } else if (average > 79 && average < 90) {
    return 'B';
  } else if (average > 89 && average < 101) {
    return 'A';
  }
};




// Uncomment the line below when you're ready to try out your function
console.log(finalGrade(101, 92, 95)); // Should print 'A'

// We encourage you to add more function calls of your own to test your code!