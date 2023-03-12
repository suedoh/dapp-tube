FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Copy app dependencies
COPY package*.json ./

# Install app dependencies
RUN npm install -g truffle
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "react-scripts start" ]
