// DONE class="reader_talk" gets bigger text, changes color when the mouse clicks
// DONE class="writer_answer" gets a different color when mouse clicks
// Wasn't able to do this one: id="intro" becomes smaller once you scroll down
// DONE id="main_story" appears

// DONE id="collaps" Make the sentence with the word world disappear.

// button id="elephant_enters" makes a photo of elephant appear
// DONE button id="thoughts_of_man" will reveal "My world is ending! The elephant just killed it!"

// id="magic_elephant" double click on elephant picture turns him into a picture of a fly

// DONE id="conclusion" Reveal only at the end
// id="fly_away" Hides the fly image from the page

console.log("Script is working");

$(document).ready(function(){
  $(".reader_talk").click(function(){
    $(this).css("background-color", "#CC99FF").css("font-size", "18px").css("padding", "10px");
  });

  $(".writer_answer").click(function(){
    $(this).css("background-color", "#CCCCFF").css("font-size", "18px").css("padding", "10px");
  });

  $("h2").click(function(){
    $("#main_story").css("visibility", "visible");
  });


  $("#collaps").click(function(){
    $("strong").hide();
    $(this).css("font-size", "30px");
  });

  $("#thoughts_of_man").click(function(){
    $("#thoughts").append(" <b>My world is ending! The elephant just killed it!</b>")
    $("b").css("font-size", "25px");
  });

  $("#end").click(function(){
  $("#conclusion").css("visibility", "visible");
  });

});

