FROM node:21-alpine

LABEL description="Image for Cardtable (github.com/erlloyd/cardtable" \
      maintainer="Bjoern Stierand <bjoern-github@innovention.de>"

RUN apk add --no-cache git
USER node
RUN git clone --depth=1 https://github.com/erlloyd/cardtable.git /home/node/cardtable
WORKDIR /home/node/cardtable
RUN yarn && rm -rf /home/node/.cache

EXPOSE 3000
CMD ["yarn","start"]
