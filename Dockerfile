FROM node:19.1.0-slim as build

WORKDIR /proxy-server

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci --production 


COPY . .

EXPOSE 8000

CMD ["npm", "run", "start"]
