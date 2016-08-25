FROM node:5.11.0-slim

RUN apt-get update && apt-get install -y mysql-client-5.5 ssh
ADD . /app
WORKDIR /app

ENTRYPOINT ["npm", "start"]
