# Stage 1: Build the React app with Vite
FROM node:18-alpine AS build

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

EXPOSE 5173

# Start Nginx server
RUN npm run dev
# CMD ["npm", "run", "dev"]
