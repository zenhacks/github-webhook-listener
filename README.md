## README
This is a listener for web hook from github.com

## Start the server
`npm install forever -g`

To use `forever` in daemon

`forever start -forever.log -o out.log -e err.log server.js`

## Environment Variable
`DEPLOY_SCRIPT`: the path for the deploy script.
`REPO_COMMIT`: the first 7 digitals for this commit to be deployed.

## Reminder
Remember to open the port 3000 for hosts 207.97.227.253, 50.57.128.197, 108.171.174.178.

In `shorewall` add this line:

    ACCEPT:info net:207.97.227.253,50.57.128.197,108.171.174.178 $FW tcp 3000
