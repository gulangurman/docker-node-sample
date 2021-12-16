#Install node - specific version
FROM node:12.16.3-alpine

#create a directory /app and run all commands below inside it
WORKDIR /app

#env variable accessible by all processes inside the image
ENV PORT 8080

#Copy this file into the image
COPY package*.json /app/

#Docker will execute any cmd after RUN
RUN npm install --production

#Copy all files
COPY . /app

#Run this when we start the container
CMD ["node","src/server.js"]
