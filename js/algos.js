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
// Input two objects
// Output boolean

// Pseudocode:
// Start the function that takes two objects.
// Find out if the objects has the same key.
  // Make two arrays, one for each object with the keys of this object.
  // Go one by one through these arrays and compare if the key names are matching.
// If they do share same key, check if the values of this key from both the objects are matching. If this is the case, return true.
// In any other case return false.

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
console.log(keysOfFirstObject);
var keysOfSecondObject = Object.keys(secondObject);
console.log(keysOfSecondObject);

var matchingkey = "";
  for (i = 0; i < keysOfFirstObject.length; i++ ) {
    if (keysOfFirstObject[i] == keysOfSecondObject[i]) {
    matchingkey = keysOfFirstObject[i];
    console.log(matchingkey);
      if (firstObject[keysOfFirstObject[i]] == secondObject[keysOfFirstObject[i]]) {
        console.log("we found a key-value match");
      }else{
        console.log("only the keys are matching, the valued DO NOT");
      }
    }else{
    console.log("No match in keys is found");
    }
  }
}
//RELEASE 2:

//Driver code:
//RELEASE 0:
console.log(longestOne(["long phrase","longest phrase","longer phrase"]));
console.log(longestOne(["apple", "millions of apples", "two apples"]));
console.log(longestOne(["amazing", "awesome", "this is incredible", "I am so pleased that I have solved this!", "happy", "relieved"]))

//RELEASE 1:
var firstguy = {name: "Steven", age: 54};
var secondguy = {name: "Tamir", age: 54};
console.log(findKeyValueMatch(firstguy, secondguy));


