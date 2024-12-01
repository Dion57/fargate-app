# Import image
FROM node:14

# Create and set working Dir
WORKDIR /usr/src/app

# copy package.json files
COPY package*.json ./

# Executes npm install to install the dependencies listed in the package.json files
RUN npm install

# Copy all remaining files and directories from build to the Working Directory
COPY . .

# Listening ports
EXPOSE 3000

# Run the node command to execute server.js
CMD ["node", "server.js"]
