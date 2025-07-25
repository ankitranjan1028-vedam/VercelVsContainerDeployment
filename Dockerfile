# Use official Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install deps
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of your code
COPY . .

# Build the static site
RUN yarn build

# Install serve to host the static output
RUN yarn global add serve

# Expose port
EXPOSE 3000

# Start the static server
CMD ["serve", "-s", "out", "-l", "3000"]
