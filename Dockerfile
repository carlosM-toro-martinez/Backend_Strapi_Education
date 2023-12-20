# Use una imagen base de Node.js
FROM node:14-alpine
ENV HOST revista.repositoriounipol.com
ENV NODE_ENV production
WORKDIR /app
COPY public /app/public
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install
RUN mkdir -p /app/public/uploads
COPY . .
RUN yarn build
EXPOSE 1337

CMD ["npm", "run", "start"]
