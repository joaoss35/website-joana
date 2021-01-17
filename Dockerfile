FROM node

ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm i --unsafe-perm node-sass

COPY . .

RUN npm rebuild --unsafe-perm node-sass

EXPOSE 4000

CMD [ "npm", "start" ]

