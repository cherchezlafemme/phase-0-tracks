// Input is a string.
// Output a sting that is reversed.
// Pseudocode:
// Create a method reverse that takes a string:
    // Create a variable which will be the reverse string, but is empty in the beginning. 
    // Find the length of the string and delete 1(since strings indexes starts at 0). 
    // This will be the index of the last letter that in the reverse version should become first letter.
    // Decrease index number by 1 and set a limit for the index at 0. 
    // Feed each letter from the original word in the new order of the indexes from the last letter index to 0.
    // Return a printed new word value, which should be a reverse string.

// Business Logic:
function reverse (word) {
  var newWord = ''; 
    for (var ind = word.length - 1; ind >= 0; ind--) 
    newWord += word[ind];
  return (newWord);
}

// Driver code:
console.log(reverse("hello"));

var reverseWord = reverse("Halloween");

if ('apple' == 'apple') {
  console.log(reverseWord);
}