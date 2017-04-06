# FROM mhart/alpine-node:base-6
FROM mhart/alpine-node:7

ENV BOTDIR /opt/bot

ENV HUBOT_PORT 8080
ENV HUBOT_ADAPTER slack
ENV HUBOT_NAME nmbot
ENV HUBOT_GOOGLE_CSE_ID 017059999294984254563:stpd7lgiclc
ENV HUBOT_GOOGLE_CSE_KEY AIzaSyCl0E1iWGoR_vN2-YAypQd28HQjFzuue1Q
ENV HUBOT_SLACK_TOKEN xoxb-134710003909-jOn0cMgndsVR0lna04HBYKu9
ENV HUBOT_SLACK_TEAM northwesternmutual
ENV HUBOT_SLACK_BOTNAME ${HUBOT_NAME}
ENV HUBOT_MARKOVLEARN_MAX 100
ENV HUBOT_MARKOVLEARN_MIN 2
ENV HUBOT_WEATHER_APIKEY aadc3edae5a9e813be843e9b40a35110
ENV TZ America/Chicago
ENV PORT ${HUBOT_PORT}

WORKDIR ${BOTDIR}
ADD . .

# If you have native dependencies, you'll need extra tools
RUN apk add --no-cache git redis

# Start redis
RUN redis-server --daemonize yes

# If you need npm, don't use a base tag
RUN npm install

EXPOSE ${HUBOT_PORT}
CMD ["bin/hubot", "-a", "slack"]
