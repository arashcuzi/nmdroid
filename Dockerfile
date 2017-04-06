# FROM mhart/alpine-node:base-6
FROM mhart/alpine-node:7

ENV BOTDIR /opt/bot

WORKDIR ${BOTDIR}
ADD . .

# If you have native dependencies, you'll need extra tools
RUN apk add --no-cache git redis

# Start redis
RUN redis-server --daemonize yes

# If you need npm, don't use a base tag
RUN npm install

EXPOSE 8080
CMD ["bin/hubot", "-a", "slack"]
