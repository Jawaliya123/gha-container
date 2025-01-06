FROM node:22.11.0-alpine

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS pizza-app-cluster.enmls.mongodb.net
ENV MONGODB_USERNAME parthdangroshiya13
ENV MONGODB_PASSWORD O4YtJNDMhLjVSNIW

WORKDIR /my-node-app

COPY package*.json /my-node-app

RUN npm install

COPY . /my-node-app

CMD ["npm", "start"]