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

//Business logic:
function longestOne(array) {
stringsNumber = array.length;
var numbers = [];
  for (var n = 0; n < stringsNumber; n++) {
    numbers.push(array[n].length);
    console.log(numbers)
  }
  for (var ind = 0; ind <= stringsNumber; ind++){
    if (numbers[ind+1] > numbers[ind]) {
      var biggestNumber = numbers[ind+1];
      console.log(biggestNumber);
     }
 }
console.log(biggestNumber);
indexOfTheLongestString = numbers.indexOf(biggestNumber)
console.log(indexOfTheLongestString)  
  // return longestSting
}

//Driver code:
longestOne(["long phrase","longest phrase","longer phrase"]);
longestOne(["apple", "millions of apples", "two apples"]);

