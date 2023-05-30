# Using base image that installed node v14
FROM node:14-alpine

# Change the working directory to /app inside container
WORKDIR /app

# Copy all of files and folder in current host directory into the working directory of container image
COPY . .

# Set up the environment for Node inside container
ENV NODE_ENV=production DB_HOST=item-db

# Installing npm dependencies and build
RUN npm install --production --unsafe-perm && npm run build

# Make a container listens to 8080 port in a runtime 
EXPOSE 8080

# Add default execution while running a container.
CMD ["npm", "start"]