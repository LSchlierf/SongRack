FROM node:24-bookworm

COPY ./.start.sh /start.sh

RUN npm i -g nodemon

ENTRYPOINT [ "/bin/sh", "/start.sh" ]