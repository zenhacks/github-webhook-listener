## README
This is a listener for web hook from github.com

## Reminder
Remember to open the port 3000 for hosts 207.97.227.253, 50.57.128.197, 108.171.174.178.

In `shorewall` add this line:

    ACCEPT:info net:207.97.227.253,50.57.128.197,108.171.174.178 $FW tcp 3000
