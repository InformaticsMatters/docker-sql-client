FROM alpine:3.11.2

# Labels
LABEL maintainer='Alan Christie <achristie@informaticsmatters.com>'

RUN apk add \
        postgresql-client=12.1-r0 \
        mysql-client=10.4.10-r0 \
        tzdata && \
    apk upgrade

# Set the Alpine image timezone...
ENV TZ=UTC

# Containers should NOT run as root
# (as good practice)
ENV APP_ROOT /home/client
RUN adduser -D -h ${APP_ROOT} -s /bin/sh client

COPY script.sh ${APP_ROOT}/
RUN chmod 755 ${APP_ROOT}/script.sh && \
    chmod 777 ${APP_ROOT} && \
    chown -R client:client ${APP_ROOT}

USER client
ENV HOME ${APP_ROOT}
WORKDIR ${APP_ROOT}

CMD [ "./script.sh" ]

