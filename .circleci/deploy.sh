#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#Install pm2 which is a production process manager for Node.js with a built load balancer
sudo npm install -g pm2
#Stop any instance of our application running currently
pm2 stop example_app
#Change directory to folder where application is downloaded.
cd ExampleApp
#Install application dependencies
npm install
#Start the application with the process name example_app using pm2
pm2 start ./bin/www –name example_app