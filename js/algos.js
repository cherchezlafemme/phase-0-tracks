// RELEASE 0:
// Create a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// Input: an array of strings
// Output: a string that is the longest from this array

// Pseudocode:
// Start the function that takes an array of strings.
// Find out how many strings the given array has.
// For each of the strings count the amount of letters and spaces inside them.
// Compare this number of letter/spaces between each other and find out which one is the longest.
    // create a new var with the number of the letters in a string, 
    // add those var into the array one by one, 
    // compare each number of array,
    // find the biggest number and return it's index in the array,
    // the string with the same index should be the longest string.
// Return the one that is the longest.

// RELEASE 1:
// Create a function that takes two objects and checks to see if the objects share at least one key-value pair. 
// Input: two objects
// Output: boolean

// Pseudocode:
// Start the function that takes two objects.
// Find out if the objects has the same key.
  // Make two arrays, one for each object with the keys of this object.
  // Go one by one through these arrays and compare if the key names are matching.
// If they do share same key, check if the values of this key from both the objects are matching. If this is the case, return true.
// In any other case return false.

//RELEASE 2:
// Create a function that takes an integer for length, and builds and returns an array of strings of the given length. 
// Input: integer
// Output: array of strings

// Pseudocode:
// Start the function that takes an integer.
// Create an array that will have the length of this integer (amount of strings will be equal to the integer given to function)
// For each object in array generate a string that have from 1 to 10 letters in it.
// Push the newly generated strings inside the array. Add the specific number of strings to array, this number should be equal the number given at input.
// Return the updated array.

//Business logic:
//RELEASE 0:
function longestOne(array) {
var numbers = [];
  for (var n = 0; n < array.length; n++) {
    numbers.push(array[n].length);
  }
  for (var ind = 0; ind <= array.length; ind++){
    if (true == (numbers[ind] > numbers[ind+1])) {
      var biggestNumber = numbers[ind];
     }
 }
var indexOfTheLongestString = numbers.indexOf(biggestNumber);
return array[indexOfTheLongestString];
}

//RELEASE 1:
function findKeyValueMatch(firstObject, secondObject) {
var keysOfFirstObject = Object.keys(firstObject);
var keysOfSecondObject = Object.keys(secondObject);
var keyValueMatchFound = false;
  for (i = 0; i < keysOfFirstObject.length; i++ ) {
    if (keysOfFirstObject[i] == keysOfSecondObject[i]) {
      if (firstObject[keysOfFirstObject[i]] == secondObject[keysOfFirstObject[i]]) {
        keyValueMatchFound = true;
      }else{
        keyValueMatchFound;
      }
    }else{
    keyValueMatchFound;
    }
  }
return keyValueMatchFound;
}

//RELEASE 2:
function generateArray(num) {
  var array = [];
      function stringMaker() {
      string = "";
      var alphabet = "abcdefghijklmnopqrstuvwxyz";
        for (var i = 0; i < 11; i++ ) {
        string += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
        }
      return string;
      }
      function displayString(string) {
        function randomNum () {
        return Math.floor(Math.random() * (11 - 1) + 1);
        }
      newstring = string.substring(0, randomNum());
      return newstring;
      }
for (i=0; i < num; i++) {
stringMaker();
array.push(displayString(string));
}
console.log(array);
return array;
}

//Driver code:
//RELEASE 0:
console.log(longestOne(["long phrase","longest phrase","longer phrase"]));
console.log(longestOne(["apple", "millions of apples", "two apples"]));
console.log(longestOne(["amazing", "awesome", "this is incredible", "I am so pleased that I have solved this!", "happy", "relieved"]))

//RELEASE 1:
var firstguy = {name: "Steven", age: 54};
var secondguy = {name: "Tamir", age: 54};
console.log(findKeyValueMatch(firstguy, secondguy));

var dog1 = {name: "Fido", breed: "Shepherd"};
var dog2 = {name: "Spotty", breed: "Shepherd"};
var dog3 = {originalname: "Fido", breed: "Husky"};
var dog4 = {name: "Fido", firstbreed: "Shepherd"};
findKeyValueMatch(dog1, dog2); //true
findKeyValueMatch(dog2, dog3); //false
findKeyValueMatch(dog3, dog1); //false
findKeyValueMatch(dog3, dog4); //false
findKeyValueMatch(dog1, dog4); //true

//RELEASE 2:
//I tried creating the loop so it prints it automatically, but for some reason it won't stop making arrays. 
//Couldn't figure out why.
//This is the loop:
var num = 3;
for (i = 10 ; i > 0; i--) {
var myarray = generateArray(num);
console.log(myarray);
console.log(longestOne(myarray));
}
//Another version of the loop. It also runs non stop.
function randomNumber() {
return Math.floor(Math.random() * (11 - 1) + 1);
}
for (i = 1; i < 11; i ++) {
console.log(longestOne(generateArray(randomNumber())));
}
//I spent a lot of time trying to solve the issue of infinite loop. Wasn't able to. Please, give me a hint in comments. I appreciate it!