// -input : two arrays
// -output: an object that has a keys based on horses and values based on colors
// Pseudocode:
// To each horse name assign a color:
// Create an empty object that will be storing all our data information;
  // Set a max index: as a length of the array minus one, and make sure we go from the max index to the 0 decreasing index value by one;
  // Assign horse name to the color from the other array where color has the same index as the horse name.
  // Set a condition that this will work if the length of arrays are equal.

var color = ["red", "yellow", "blue", "green"];
var horses = ["Artex", "Spotty", "Prancer", "Dancer"];

// console.log(horses.length);

color.push("purple");
horses.push("Silver");

var horseColors = {};
if (color.length == horses.length) {
  for (var i = (color.length-1); i >= 0; i--) {
     var horseName = horses[i];
    horseColors[horseName] = color[i];
    }
} else {
  console.log("We don't have enough colors or horses!");
}

console.log(horseColors);

//RELEASE 2: CARS
function Car(kind, isRunning, year) {
  this.kind = kind;
  this.isRunning = isRunning;
  this.year = year;
  this.honk = function() { console.log("BEEP!!! BEEP!!! BEEP!!!"); };
  this.go = function() { 
    if (this.isRunning) {
      console.log("I'm off to the races!");
    } else {
      console.log("I need a fix!!!!");
    }
  };
}

var newCar = new Car("Subaru", true, 2004);
var oldCar = new Car("Model T", false, 1915);

console.log(newCar);
newCar.honk();
newCar.go();
console.log(oldCar);
oldCar.honk();
oldCar.go();