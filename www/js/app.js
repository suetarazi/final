'use strict';

let page=1;

//Handlebars Code: 

let getHandlebarTemplate = $('#entry-template').html();
let template = Handlebars.compile(getHandlebarTemplate);


let getMoreChar = $('#getMoreChar').on('click', ajaxCall);

// make an ajax call to the backend to get the tasks from the DB
function ajaxCall() {  
  let newPage = page++;
  
  $.ajax(`http://localhost:3000/characters?page=${newPage}`, {method:'GET', dataType: 'JSON'})
  .then(data => {
    data.results.forEach(character => {
      let newCharacter = new Character(character);

      newCharacter.render();
      console.log(character);
      })

    })
    
    charArray.forEach(char => {
      let context = {name: $(char.name), likes: $(char.likes)};
      let html = template(context);
    })
    
}

let charArray = [];
// run them through a constructor
function Character(obj){
  this.name = obj.name;
  this.likes = obj.likes;
  charArray.push(this);
}

// make a prototype to display them using handlebars
Character.prototype.render = function(){
  
  let html = template(this);
  $('#moreChar').append(html);
  
}


let likeButtons = $('button');
// let likeButtons = document.getElementsByTagName('button');

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

