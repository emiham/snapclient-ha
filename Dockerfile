FROM ghcr.io/home-assistant/base:latest

RUN apk add --no-cache \
        snapcast-client \
        alsa-plugins-pulse

COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
