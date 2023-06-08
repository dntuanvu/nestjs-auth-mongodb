FROM node:16.14.2 as development

WORKDIR /usr/src/app

COPY . . 

RUN npm install

# COPY . .  

EXPOSE 3000

CMD ["npm", "start"]