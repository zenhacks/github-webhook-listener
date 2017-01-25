spawn = require('child_process').spawn

module.exports = exports = (name, url, after) ->

  process.env.DEPLOY_SCRIPT = '/home/deploy/deploy-remote.sh'
  process.env.REPO_COMMIT = after

  console.log '\n###############################################'
  console.log 'Detected push to \'master\', last commit: ' + after
  t0 = new Date().getTime()

  deploy = spawn process.env.DEPLOY_SCRIPT

  deploy.stdout.on 'data', (data) ->
    console.log "#{data}"

  deploy.stderr.on 'data', (data) ->
    console.log "#{data}"

  deploy.on 'exit', (code) ->
    unless code is 0
      console.log "Deploy failed with code #{code}."
    else
      console.log "Deploy successful in " + (new Date().getTime() - t0)/1000 + " seconds."