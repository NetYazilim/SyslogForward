FROM alpine:3.10
LABEL maintainer "Levent SAGIROGLU <LSagiroglu@gmail.com>"

EXPOSE 514/udp 6514/tcp  
ENV TARGET_NAME "telegraf"
ENV TARGET_PORT 6514
VOLUME /shared

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache rsyslog
RUN mkdir -p /tmp/rsyslog
COPY rsyslog.conf /etc/rsyslog.conf

ENTRYPOINT [ "rsyslogd", "-n" ]
