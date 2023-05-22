# Build Stage:
FROM node:latest as build-stage

RUN mkdir -p home/app

WORKDIR home/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Production Stage:
FROM nginx:1.24.0-alpine as production-stage
COPY --from=build-stage /home/app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx","-g","daemon off;" ]


