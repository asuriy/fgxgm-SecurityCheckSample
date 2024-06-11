FROM node:20.13.1-bookworm-slim

RUN npm install -g npm@10.8.1

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
