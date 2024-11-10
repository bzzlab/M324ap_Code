FROM node:18.17.1

RUN apt-get update && apt-get install -y lsb-release
RUN apt-get install -y nano && apt-get install -y bash \
    && apt-get clean

RUN mkdir /server
WORKDIR /server

COPY ./server/* .
RUN npm install
EXPOSE 3000

# command run after starting container
CMD ["npm", "run", "server"]
