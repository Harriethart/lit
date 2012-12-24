# Setup Express.js:
global.express = require('express')

global.forms = require('forms');

global.app = app = express()
require("#{__dirname}/src/configuration")

# Set up the Database:
require("#{__dirname}/src/models/database")

# Require the User model and controller:
require("#{__dirname}/src/models/user")
require("#{__dirname}/src/controllers/user_controller")

# Set up a routing for our homepage:
require("#{__dirname}/src/controllers/home_controller")

# Start server:
app.listen(port = 3000)
console.log("The Lit server listening on port %d in %s mode", port, app.settings.env)