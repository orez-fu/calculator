FROM node:16-alpine

WORKDIR /project

COPY package.json package-lock.json /project/

RUN npm install

COPY . /project/

EXPOSE 3000

CMD ["npm", "start"]
