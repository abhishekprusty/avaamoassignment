FROM node:16

ARG USERNAME=opc

ENV user=$USERNAME
ENV TZ="Asia/Calcutta"

WORKDIR /usr/src/app

COPY package*.json ./

RUN date \
    && groupadd --gid 2000 $user \
    && useradd --uid 2000 --gid $user --shell /bin/bash --create-home $user \
    && npm install

USER $user

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]
