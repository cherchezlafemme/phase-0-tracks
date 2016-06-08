console.log("This is working!");

function addPurpleBorder() {
var title_el = document.getElementsByTagName('h1')
title_el[0].style.border = "5px solid purple"
}

addPurpleBorder()

function doMagic(event) {
  event.target.style.background = "pink"
}

var title_el = document.getElementsByTagName('h1')
title_el[0].addEventListener("click", doMagic)