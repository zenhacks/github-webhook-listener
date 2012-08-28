module.exports = exports = (app) ->

  app.post '/', (req, res) ->
    # sample data https://gist.github.com/3496677
    { repository: {name, url}, after } = req.body.payload
    console.log name
    console.log url
    console.log after
    res.send 'ok'

