# Use Node.js as the base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the entire project
COPY . .

# Expose port 8080
EXPOSE 8080

# Start the app
CMD ["node", "server.js"]
