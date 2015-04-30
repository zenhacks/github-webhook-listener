## README
This is a listener for receving signals sent by github.com through web hook. It mainly:
- listening for `POST` request from github at port 3000
- parse the JSON and fetch the information about the
  * repository name
  * repository url
  * the commit after push
- pass the above information through environment variable `REPO_COMMIT`
- spawn a process for deployment

## Usage
`npm install` to install dependencies
 
`node server.js` to start the server

or use `forever` to guard the server daemon

`npm install forever -g`

`forever start -forever.log -o out.log -e err.log server.js`

## Environment Variable
`DEPLOY_SCRIPT`: the path for the deploy script.
`REPO_COMMIT`: the first 7 digitals for this commit to be deployed.

## Reminder
Need to open the port 3000 for hosts 207.97.227.253, 50.57.128.197, 108.171.174.178.

In `shorewall` add this line:

    ACCEPT:info net:207.97.227.253,50.57.128.197,108.171.174.178 $FW tcp 3000
