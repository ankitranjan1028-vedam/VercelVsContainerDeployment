# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Install dependencies
RUN yarn install

# Build static files
RUN yarn build

# Install a static server
RUN yarn global add serve

# Expose the port your app will run on
EXPOSE 3000

# Command to run the server
CMD ["serve", "-s", "out", "-l", "3000"]
