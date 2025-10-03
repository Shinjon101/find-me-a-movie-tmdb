
FROM node:22-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first 
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files
COPY . .

# Expose Vite's development port
EXPOSE 5173

# Start development server
# --host 0.0.0.0 allows external connections
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]