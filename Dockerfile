# Use official Node.js LTS image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all other files
COPY . .

# Expose the port your app runs on (change if needed)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
