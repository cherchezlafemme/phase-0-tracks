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

//Driver code:
console.log(longestOne(["long phrase","longest phrase","longer phrase"]));
console.log(longestOne(["apple", "millions of apples", "two apples"]));
console.log(longestOne(["amazing", "awesome", "this is incredible", "I am so pleased that I have solved this!", "happy", "relieved"]))
