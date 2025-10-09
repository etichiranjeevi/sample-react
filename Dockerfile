# Use official Node.js LTS image as base
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose port (same as your app)
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]
