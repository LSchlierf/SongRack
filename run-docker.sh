#!/bin/sh

docker build -t setlist . && \
docker run -dit \
            --name setlist \
            -p 80:80 \
            -p 443:443 \
            -v ./setlist-back:/setlist-back \
            -v ./setlist-front:/setlist-front \
            -v /etc/letsencrypt:/etc/letsencrypt \
            setlist