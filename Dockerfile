FROM node:16
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
# Bundle app source
COPY . .
RUN npm install
RUN npm ci
EXPOSE 3000
RUN npm run build
CMD [ "npm", "run", "start" ]
