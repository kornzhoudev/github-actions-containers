FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.ippls.mongodb.net
ENV MONGODB_USERNAME kornzk
ENV MONGODB_PASSWORD HuUkG9ka9l1ELrQv

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]