# How to run tests locally
# Option 1: on Cloud 9 (recommended)
1. get your Cloud 9 account
2. optional: email Mingyu your account name if you want to be a collaborator 
3. go to https://ide.c9.io/mingyuz/bloomberg_fda2
4. open up a terminal in Could 9 IDE
5. Type in
`mysql-ctl start`

`rails s -b $IP -p $PORT`
The application will be running at https://bloomberg-fda2-mingyuz.c9users.io/. The default `$PORT` is 8080, you can change that (eg. 8081) if you want to or that port is already taken.
6. optional: if you get the `A server is already running.` error, do the following:
`cat /home/ubuntu/workspace/tmp/pids/server.pid`

`kill -9 [the PID you just got from the previous command]`

# Option 2: on your local machine
1. clone the repo to your local directory
2. Open up a terminal
`cd /your/local/directory`

`mysql-ctl start`

`rails server`
The application will be running at http://localhost:3000
