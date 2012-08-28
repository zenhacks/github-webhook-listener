module.exports = exports = (app) ->
  app.post '/', (req, res) ->
    console.log req.body
    res.send 'ok'
