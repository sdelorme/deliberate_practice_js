const menu = {
  _courses: {
    appetizers: [],
    mains: [],
    desserts: [],
  },
  get appetizers() {
    return this._courses.appetizers;
  },
  set appetizers(appetizerNew) {
    this._courses.appetizers = appetizerNew;
  },
  get mains() {
    return this._courses.mains;  
  },
  set mains(mainsNew) {
    this._courses.mains = mainsNew;  
  },
  get desserts() {
    return this._courses.desserts;
  },
  set desserts(dessertsNew) {
    this._courses.desserts = dessertsNew;
  },
  get courses() {
    return {
      appetizers: this.appetizers,
      mains: this.mains,
      desserts: this.desserts,
    };
  },
  addDishToCourse (courseName, dishName, dishPrice) {
    const dish = {
      name: dishName,
      price: dishPrice,
    };
    return this._courses[courseName].push(dish);
  },
  getRandomDishFromCourse (courseName) {
    const dishes = this._courses[courseName];
    const randomIndex = Math.floor(Math.random() * dishes.length);
    return dishes[randomIndex];
  },
  generateRandomMeal () {
    const appetizer = this.getRandomDishFromCourse('appetizers');
    const main = this.getRandomDishFromCourse('mains');
    const dessert = this.getRandomDishFromCourse('desserts');
    const totalPrice = appetizer.price + main.price + dessert.price;
    return `Your meal is ${appetizer.name}, ${main.name}, and ${dessert.name} for dessert. Your total price is $${totalPrice}.`; 
  },
};

menu.addDishToCourse('appetizers', 'French Fries & Gravy', 5);
menu.addDishToCourse('appetizers', 'Bacon Wrapped Dates', 8.55);
menu.addDishToCourse('appetizers', 'Kale Salad', 7.25);
menu.addDishToCourse('mains', 'Sausage and Peppers', 10);
menu.addDishToCourse('mains', 'Cheeseburger', 12);
menu.addDishToCourse('mains', 'Steak Frites', 21);
menu.addDishToCourse('desserts', 'Whipped Cream and Berries', 5);
menu.addDishToCourse('desserts', 'Muffins', 9.99);
menu.addDishToCourse('desserts', 'Cheesecake', 12.45);


let meal = menu.generateRandomMeal();

console.log(meal);









