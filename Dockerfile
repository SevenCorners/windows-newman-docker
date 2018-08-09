FROM stefanscherer/node-windows:latest

RUN npm install newman -g

WORKDIR c:\\tests

ENTRYPOINT ["newman.cmd"]