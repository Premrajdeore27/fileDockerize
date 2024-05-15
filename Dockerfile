FROM node:18.16.0-slim
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
EXPOSE 3000
CMD [ "npm", "start"]