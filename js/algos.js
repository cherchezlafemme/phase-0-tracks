// Create a function that takes an array of words or phrases and returns the longest word or phrase in the array.
// Input: an array of strings
// Output: a string that is the longest from this array

// Pseudocode:
// Start the function that takes an array of strings.
// Find out how many strings the given array has.
// For each of the strings count the amount of letters and spaces inside them.
// Compare this number of letter/spaces between each other and find out which one is the longest.
// Return the one that is the longest.

//Business logic:
function longestOne(array) {
stringsNumber = array.length;
for (var n = 0; n < stringsNumber; n++) {
  console.log(array[n].length);
    }
// return longestString;
}


//Driver code:
longestOne(["long phrase","longest phrase","longer phrase"]);
longestOne(["apple", "millions of apples", "two apples"]);
