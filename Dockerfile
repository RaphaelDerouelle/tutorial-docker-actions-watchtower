FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN addgroup --system app && adduser --system --group app
USER app

EXPOSE 3000

CMD ["node", "app.js"]
