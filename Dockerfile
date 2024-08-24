FROM node:14
ENV QBIT_HOST=http://qbittorrent-gluetun-1:8080
WORKDIR /usr/src/node-app
COPY . ./
RUN npm install
RUN npm run build
RUN npm run server-setup



CMD [ "npm", "run", "server-docker-start" ]
