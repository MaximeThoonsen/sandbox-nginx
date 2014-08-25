restify = require 'restify'

exerciseApi = restify.createServer(
  name: 'nginx-exercise'
)

# API Routes
exerciseApi.get '/', (req, res) ->
  res.send 'Hello from the api'

exerciseApi.startServer = (port = 3000, callback) ->
  console.log "Starting server on port "+port
  exerciseApi.listen port, callback

exerciseApi.startServer()
