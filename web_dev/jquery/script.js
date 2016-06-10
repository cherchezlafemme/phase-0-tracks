// class="reader_talk" gets bigger text, changes color when the mouse is over it
// class="writer_answer" gets a different color when mouse is over it
// id="intro" becomes smaller once you scroll down
// id="main_story" appears

// id="collaps" Make the word world disappear.

// button id="elephant_enters" makes a photo of elephant appear
// button id="thoughts_of_man" will reveal "My world is ending! The elephant just killed it!"

// id="magic_elephant" double click on elephant picture turns him into a picture of a fly

// id="conclusion" Reveal only at the end
// id="fly_away" Hides the fly image from the page

$(document).ready(function(){
  $(".reader_talk").click(function(){
    $(this).css("background-color", "#989898")
  });

});