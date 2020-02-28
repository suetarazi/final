'use strict';

//Sue's attempt at JQUERY:
// let likeButtons = $('button');

// for (let i = 0; i < likeButtons.length; i++) {
//   $('button').likeButtons[i].on('click', likeMe);
// }

// function likeMe(e) {
//   let character = e.target.parentNode;
//   let counter = character.$('span')[0];
//   let count = parseInt(counter.textContent);
//   count++;
//   counter.textContent = count;
// }


//original code:

let likeButtons = document.getElementsByTagName('button');

for (let i = 0; i < likeButtons.length; i++) {
  likeButtons[i].addEventListener('click', likeMe);
}

function likeMe(e) {
  let character = e.target.parentNode;
  let counter = character.getElementsByTagName('span')[0];
  let count = parseInt(counter.textContent);
  count++;
  counter.textContent = count;
}
