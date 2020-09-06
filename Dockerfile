# Specify a base image
FROM node:12.13.0-alpine AS alpine

WORKDIR /app

# Install dependencies
COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

RUN chmod +x ./scripts/wait_and_start.sh

# Default command
CMD ["./scripts/wait_and_start.sh"]
