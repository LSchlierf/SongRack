#!/bin/sh

runfront() {
    cd /setlist-front
    npm run dev
}

runback() {
    cd /setlist-back
    npx -y zenstack generate --output zenstack
    if [ "$INITDB" ]; then
        echo "initializing db"
        npx -y zenstack db push
        npm run seed
    else
        echo "db already initialized"
    fi
    nodemon --watch /setlist-back index.ts
}

npm --prefix /setlist-back i
npm --prefix /setlist-front i

runfront & runback
