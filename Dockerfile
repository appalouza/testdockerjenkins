FROM node:14.15.4-alpine as build-step

WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .
RUN npm run build --prod


FROM nginx:1.19.6-alpine as prod-step
COPY --from=build-step /app/dist /usr/share/nginx/html
#docker run --rm -d -p 80:80/tcp client-