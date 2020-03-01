'use strict';

let page=1;
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


//Handlebars Code: 
$('.charButton').on('click', function(){
  $(this).toggleClass('gray');
  page++;
  ajaxCall(page);
})  

// make an ajax call to the backend to get the tasks from the DB
function ajaxCall(page) {
  $.ajax(`http://localhost:3000/characters?page=${page}`, {method:'GET', dataType: 'JSON'})
  .then(data => {
    data.forEach(character => {
      new Character(character).render();
    })
  })
}

// run them through a constructor
function Character(obj){
  let charArray = [];
  this.name = obj.results.name;
  this.height = obj.results.height;
  this.likes = obj.results.likes;
  charArray.push(this);
}

// make a prototype to display them using handlebars
Task.prototype.render = function(){
  let source = $('#entry-template').html();
  let template = Handlebars.compile(source);
  let html = template(this);

  $('#moreChar').append(html);
}
