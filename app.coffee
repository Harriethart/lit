# Setup Express.js:
global.express = require('express')
global.app = app = express()
require("#{__dirname}/src/configuration")

# Set up a routing for our homepage:
require("#{__dirname}/src/controllers/home_controller")

# Start server:
port = 3000;
app.listen(port)
console.log("Lit server listening on port %d in %s mode", port, app.settings.env)