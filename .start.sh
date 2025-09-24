#!/bin/sh

runfront() {
    cd /setlist-front
    npm run start
}

runback() {
    cd /setlist-back
    sleep 5
    nodemon app.js
}

npm --prefix /setlist-back i
npm --prefix /setlist-front i

runfront & runback
