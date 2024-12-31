FROM node:18-alpine

WORKDIR /app

copy package*.json ./

RUN npm install 

COPY . .

EXPOSE 5000 

CMD ["npm", "start"]

