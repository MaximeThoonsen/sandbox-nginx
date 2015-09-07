restify = require 'restify'

exerciseApi = restify.createServer(
  name: 'nginx-exercise'
)

# API Routes
exerciseApi.get '/', (req, res) ->
  res.send 'Hello from the api'

# API Routes
exerciseApi.get '/protected-route', (req, res) ->
  console.log req.headers
  return res.send(401) if req.headers.verified isnt 'SUCCESS'
  res.send 'This is a serious content'

exerciseApi.startServer = (port = 3000, callback) ->
  console.log "Starting server on port "+port
  exerciseApi.listen port, callback

exerciseApi.startServer()
