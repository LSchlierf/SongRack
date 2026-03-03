FROM node:24-bookworm

COPY ./.start.sh /start.sh

RUN npm i -g nodemon ts-node

ENTRYPOINT [ "/bin/sh", "/start.sh" ]