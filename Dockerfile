FROM node:alpine as xxx
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=xxx /app/build /usr/share/ngnix/html


 
  
