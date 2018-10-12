# FROM node:10.10.0-slim
# WORKDIR /app
# copy preguntas.md /app

# FROM percytataje10/orbis-training-docker:0.2.0
# RUN ls /app
# RUN rm -rf /app/preguntas.md

#FROM nginx:alpine
# WORKDIR /app

FROM node:10.10.0-slim
# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install