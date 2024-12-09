# Use official Node.js image
FROM node:16 AS build
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package.json ./

# Install dependencies inside the container
RUN npm install

COPY . .
# Expose the port your backend is running on (default is 5000)
EXPOSE 3000

# Start the backend server
CMD ["npm", "start"]
