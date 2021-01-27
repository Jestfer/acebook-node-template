FROM node:alpine
WORKDIR /var/www/html/
COPY package*.json ./
RUN npm install
COPY . .
ENV MONGODB_URL="host.docker.internal:27017"
EXPOSE 3000
CMD [ "node", "./bin/www" ]
