# Use an official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY app/package*.json ./
RUN npm install

# Copy the app code
COPY app/ .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

