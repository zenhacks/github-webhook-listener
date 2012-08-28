spawn = require('child_process').spawn

module.exports = exports = (name, url, commit) ->
  process.env.REPO_COMMIT = commit
  deploy = spawn 'grep', ['ssh']

  deploy.stdout.on 'data', (data) ->
    console.log data

  deploy.stderr.on 'data', (data) ->
    console.log "Deploy error:#{data}"

  deploy.on 'exit', (code) ->
    unless code is 0
      console.log "Deploy failed with code #{code}"
