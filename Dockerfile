FROM node:16-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --legacy-peer-deps
COPY ./ .

RUN npm run build

EXPOSE 80

ENV NODE_ENV=production
ENV CRYSTALLIZE_TENANT_IDENTIFIER=dounot
CMD [ "npm", "run", "docker:start" ]
