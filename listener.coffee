module.exports = exports = (app) ->
  app.post '/', (req, res) ->

    { repository: {name, url}, ref, after } = req.body

    if ref == 'refs/heads/master' and name == 'pardiralli'
      after = after[0...7]
      require('./deploy_queue')(name, url, after)
      res.send 'ok'
    else
      res.send 'illegal request: ' + req.body