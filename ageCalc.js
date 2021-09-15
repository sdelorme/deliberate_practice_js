// Write your function here:
const howOld = (age, year) => {
  const theCurrentYear = 2021;
  const yearDifference = year - theCurrentYear;
  const newAge = age + yearDifference;
  const numberOfYears = newAge * -1;
  const calculatedAge = age + yearDifference;
  if (newAge < 0) {
    return `The year ${year} was ${numberOfYears} years before you were born`;
  } else if (year > theCurrentYear) {
    return `You will be ${calculatedAge} in the year ${year}`;
  } else if (year < theCurrentYear && newAge > 0) {
    return `You were ${newAge} in the year ${year}`;
  }
};

console.log(howOld(30, 1995));
console.log(howOld(15, 1901));
console.log(howOld(1, 2029));

