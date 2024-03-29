# Use an official Node.js runtime as a base image
FROM node:18-alpine
# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY . .

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port that your app will run on
EXPOSE 8000

# Define the command to run your application
CMD ["npm", "run", "facetec-browser-sdk"]
