'use strict';

// **** Require/Include all of our external dependencies (3rd party modules) ****

// Express server library
const express = require('express');
// Create an application using express
const app = express();

// CORS (Cross Origin Resource Sharing) to allow (or deny) access to any web server or client
const cors = require('cors');
// Initialize cors. With no arguments, it lets anyone use our API
app.use(cors());

// MORGAN is a logger. It'll print out useful request information to your console
const morgan = require('morgan');
// Sending 'dev' as the argument tells Morgan to log only a few important details
app.use(morgan('dev'));

// **** Import our custom Node modules ****

// Our database client. Will use this to connect to Postgres
const database = require('./database.js');

// The handlers for dealing with 404 (not found) and 500 (errors)
const defaults = require('./middleware.js');

// The handlers for the routes that this API will actually use
const routes = require('./routes.js');

//method override
const methodOverride = require('method-override');
app.use(methodOverride('_method'));

// Anything static (css or browser-side javascript) should go here
app.use(express.static('./www'));

// On the server, we'll use EJS to do templates
app.set('view engine', 'ejs');
// The location of our EJS Templates
app.set('views', './server/views');

// Route Handler Definitions. Each express method and route should call
// a method that the routes.js file exported
app.get('/', routes.homePageHandler);

//Sue's route for Handlebars
app.get('/characters', moreCharacters);

//function for handlebars
function moreCharacters(request, response) {
  routes.fetchCharactersFromSWAPI(request.query.page)
  // console.log(request.query.page);
  .then(data => {
    // console.log(data);
    response.json(data);
  }) 

}

app.put('/characters/:name', increaseVotes)

//function for increasing votes
function increaseVotes(request, response) {
  let name = request.params.name;
  let sql = 'UPDATE click_counts SET clicks=clicks+1 WHERE remote_id=$1 RETURNING clicks;';
  let safeValues = [name];

  database.query(sql, safeValues)
  .then(() => {
    response.redirect('/');
  })


}

// Wire in the defaults we required above.
app.use('*', defaults.notFoundHandler);
app.use(defaults.errorHandler);

// Start the web server on a port (defaults to 3000), after we connect to the database
function startServer() {
  let port = process.env.PORT || 3000;
  database.connect()
    .then(() => app.listen(port))
    .then(() => console.log(`Server Listening on ${port}`))
    .catch(err => console.error(err));
}

// Export our server
// In index.js, we required this module. In that file, server.start
// Is the server key in the object below, which is a reference to the startServer
// method that is defined above
module.exports = {
  server: app,
  start: startServer
};