# Use Node.js base image
FROM node:20

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Cloud Run expects the container to listen on $PORT
ENV PORT 8080
EXPOSE 8080

CMD ["node", "index.js"]
