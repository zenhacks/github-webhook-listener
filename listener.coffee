module.exports = exports = (app) ->

  app.post '/', (req, res) ->
    # sample data https://gist.github.com/3496677
    { repository: {name, url}, after } = JSON.parse(req.body.payload)

    after = after[0...7]

    require('./deploy_queue')(name, url, after)

    res.send('ok')
