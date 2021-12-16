# A sample node.js + express.js web app

This is a simple node + express web application that can be used as a basis for a Docker image.

# Install npm dependencies
npm install

# Create the image
docker build . -t docker-node-sample

# Create and run the container
docker run -p 7777:8080 --name my-node-app -d docker-node-sample

# Check that the web app is working
$ curl localhost:7777
