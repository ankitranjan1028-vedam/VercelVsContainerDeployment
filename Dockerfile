# Dockerfile
FROM node:18-alpine AS deps
WORKDIR /app

# Just copy package.json
COPY package.json ./
RUN npm install
