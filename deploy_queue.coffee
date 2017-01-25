spawn = require('child_process').spawn

module.exports = exports = (name, url, after) ->

  process.env.DEPLOY_SCRIPT = '/home/deploy/bin/deploy.sh'
  process.env.REPO_COMMIT = after
  # deploy = spawn('ls', ['-lh', '/usr'])
  deploy = spawn process.env.DEPLOY_SCRIPT

  deploy.stdout.on 'data', (data) ->
    console.log "running #{data}"

  deploy.stderr.on 'data', (data) ->
    console.log "Deploy error: #{data}"

  deploy.on 'exit', (code) ->
    unless code is 0
      console.log "Deploy failed with code #{code}."
    else
      console.log "Deploy successful."
