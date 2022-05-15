const team = {
  _players: [
    {
      firstName: 'Tom',
      lastName: 'Brady',
      age: 43,
    },
    {
      firstName: 'Rob',
      lastName: 'Gronkowski',
      age: 29,
    },
    {
      firstName: 'Julian',
      lastName: 'Edelman',
      age: 34,
    },
  ],
  _games: [
    {
      opponent: 'Bills',
      teamPoints: 63,
      opponentPoints: 7,
    },
    {
      opponent: 'Dolphins',
      teamPoints: 28,
      opponentPoints: 3,
    },
    {
      opponent: 'Jets',
      teamPoints: 50,
      opponentPoints: 13,
    },
  ],
  get players() {
    return this._players;
  },
  get games() {
    return this._games;
  },
  addPlayer (firstName, lastName, age) {
    let newPlayer = {
      firstName: firstName,
      lastName: lastName,
      age: age,
    };
    this.players.push(newPlayer);    
  },
  addGame (opponent,teamPoints, opponentPoints) {
    let newGame = {
      opponent: opponent,
      teamPoints: teamPoints,
      opponentPoints: opponentPoints,
    };
    this.games.push(newGame);
  }
};
team.addPlayer('Steph', 'Curry', 28);
team.addPlayer('Lisa', 'Leslie', 44);
team.addPlayer('Bugs', 'Bunny', 76);
team.addGame('Da Bears', 99, 0);
team.addGame('Bucs', 24, 18);
team.addGame('Cowboys', 13, 12);

console.log(team.players);
console.log(team.games);







