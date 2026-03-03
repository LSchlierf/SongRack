#!/bin/sh

runfront() {
    cd /setlist-front
    npm run dev
}

runback() {
    cd /setlist-back
    npx -y zenstack generate --output zenstack
    nodemon --watch /setlist-back --watch /acme index.ts
}

npm --prefix /setlist-back i
npm --prefix /setlist-front i

runfront & runback
