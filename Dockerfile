# FROM node:20-alpine

# # Sets the working directory
# WORKDIR /app

# # Copy package.json and package-lock.jsons to the working directory
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the entire application directory into the container
# COPY . .

# # Build the React app
# RUN npm run build

# # Expose the port
# EXPOSE 5000

# # Start the React app when the container starts
# CMD [ "npm", "start"]


# Step 1: Use an official Node.js runtime as a parent image
FROM node:20-alpine AS build

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application code to the container
COPY . .

# Step 6: Build the app for production
RUN npm run build

# Step 7: Use an official Nginx image to serve the build artifacts
FROM nginx:alpine AS production

# Step 8: Copy the build output to Nginx's default directory
COPY --from=build /app/dist /usr/share/nginx/html

# Step 10: Expose port 80
EXPOSE 80

# Step 11: Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
