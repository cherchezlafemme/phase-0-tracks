console.log("This is working!");

function addPurpleBorder() {
var title_el = document.getElementsByTagName('h1')
title_el[0].style.border = "5px solid purple"
title_el[0].style.padding = "10px"
}

addPurpleBorder()

var title_el = document.getElementsByTagName('h1')
title_el[0].addEventListener("click", doMagic)

function doMagic(event) {
  event.target.style.background = "pink"
}

var source = document.getElementById('original-source')
source.addEventListener("mouseover", changeText)

function changeText(event) {
  event.target.style.color = "yellow"
}

var magic = document.getElementsByTagName('em')
magic[0].addEventListener("click", dissapear)

function dissapear(event) {
  document.getElementsByTagName('article')[0].style.visibility = "hidden"
}
