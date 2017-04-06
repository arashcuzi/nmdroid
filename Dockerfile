# FROM mhart/alpine-node:base-6
FROM mhart/alpine-node:7

ENV BOTDIR /opt/bot

WORKDIR ${BOTDIR}
ADD . .

# If you need npm, don't use a base tag
RUN npm install

EXPOSE 8080
CMD ["bin/hubot"]
