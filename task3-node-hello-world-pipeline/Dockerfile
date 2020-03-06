FROM node:13.8.0-buster-slim
COPY . /src
RUN cd /src && npm install

# expose port and define CMD
USER node
EXPOSE 4000
CMD [ "npm", "start" ]
