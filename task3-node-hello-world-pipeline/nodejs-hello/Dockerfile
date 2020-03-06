## it uses node js image alpine version from image registries.
FROM node:8.16.1-alpine
## it sets directory in the container to /app to store files and launch our app.
WORKDIR /app
## it copies the app to /app directory with dependencies.
COPY task3-node-hello-world-pipeline/nodejs-hello/package.json /app
RUN npm install
COPY task3-node-hello-world-pipeline/nodejs-hello/. /app
## it commands to run our app which is index.js.
CMD node index.js
##  it exposes the port where our app is running that is port 8080.
EXPOSE 8080
