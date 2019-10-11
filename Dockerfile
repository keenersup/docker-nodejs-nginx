FROM node:latest
COPY package*.json /server/
RUN cd /server; npm install -y \
    && npm audit fix
COPY . /server
EXPOSE 3002
WORKDIR /server

#CMD ["node","-r","esm","/server/src/index.js"]
CMD ["npm","run","serve"]