/* eslint-disable no-undef */
const getSleepHours = day => {
  day = day.toLowerCase();
  if (day === 'monday') {
    return 7;
  } else if (day === 'tuesday') {
    return 12;
  } else if (day === 'wednesday') {
    return 9;
  } else if (day === 'thursday') {
    return 6;
  } else if (day === 'friday') {
    return 10;
  } else if (day === 'saturday') {
    return 1;
  } else if (day === 'sunday') {
    return 11;
  } else {
    return 'Enter a day of the week please!';
  }
};

const getActualSleepHours = () =>
  getSleepHours('Monday') +
  getSleepHours('Tuesday') +
  getSleepHours('Wednesday') +
  getSleepHours('Thursday') +
  getSleepHours('Friday') +
  getSleepHours('Saturday') +
  getSleepHours('Sunday');

const getIdealSleepHours = idealHours =>
  idealHours * 7;

const calculateSleepDebt = () => {
  actualSleepHours = getActualSleepHours();
  const idealSleepHours = getIdealSleepHours(8);
  difference = (actualSleepHours - idealSleepHours);
  if (actualSleepHours === idealSleepHours) {
    return 'You got the perfect amount of sleep! ' + idealSleepHours + ' hours!';
  } else if (actualSleepHours > idealSleepHours) {
    return 'You got ' + difference + ' hour(s) more sleep than you needed';
  } else {
    return 'You did not get enough sleep -- you need ' + (difference * -1) + ' more hour(s) of rest this week!';
  }
};

console.log(calculateSleepDebt(8));