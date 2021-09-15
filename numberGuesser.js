let humanScore = 0;
let computerScore = 0;
let currentRoundNumber = 1;
// Write your code below:
const generateTarget = () => {
  return Math.floor(Math.random() * 9);
};
const compareGuesses = (userGuess, computerGuess, targetNumber) => {
  let userDifference = Math.abs(userGuess - targetNumber);
  let computerDifference = Math.abs(computerGuess - targetNumber);
  if (userDifference <= computerDifference) {
    return true;
  } else {
    return false;
  }
};
const updateScore = winner => {
  if (winner === 'human') {
    return humanScore += 1;
  } else if (winner === 'computer') {
    return computerScore += 1;
  }
};
const advanceRound = () => {
  return currentRoundNumber += 1;
};

