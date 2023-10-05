FROM node:14-alpine

# Sets the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application directory into the container
COPY . .

# Build the React app
RUN npm run build

# Expose the port
EXPOSE 3000

# Start the React app when the container starts
CMD [ "npm", "start"]