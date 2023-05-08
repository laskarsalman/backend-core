FROM node:20.1.0

#Set the working directory of the container to your Dockerfile:
WORKDIR /backend-core

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port that your Node.js application is listening 
EXPOSE 3000

# Start Node.js application
CMD ["npm","run","server","--env=dev"]
